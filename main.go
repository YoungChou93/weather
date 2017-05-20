package main

import (
	"encoding/json"
	"fmt"
	"github.com/YoungChou93/weather/config"
	"github.com/YoungChou93/weather/database"
	"github.com/YoungChou93/weather/log"
	"github.com/YoungChou93/weather/myredis"
	"github.com/YoungChou93/weather/weather"
	"github.com/YoungChou93/weather/web"
	"github.com/YoungChou93/weather/webservice"
	"html/template"
	"net/http"
	"strings"
	"time"
)

//启动web服务
func startHttpServer() {
	http.HandleFunc("/weatherjson", getWeatherJson)
	http.HandleFunc("/todayweather", getTodayWeather)
	http.HandleFunc("/provinces", getProvince)
	http.HandleFunc("/citys", getCity)

	http.HandleFunc("/wuhan", getWeather)
	http.HandleFunc("/", getWeatherDetail)
	http.HandleFunc("/jsonp", getWeatherDetailJson)
	http.Handle("/static/", http.StripPrefix("/static/", http.FileServer(http.Dir("static"))))
	err := http.ListenAndServe(config.Get(config.PORT), nil)
	if err != nil {
		log8j.Logger.Error("Error is " + err.Error())
	}

}
func init() {
	//加载配置文件
	config.LoadConfig()
	//初始化日志
	log8j.Logger.Init(config.Get(config.LOGFILE), "weather")
	log8j.Logger.Info("程序启动...")
	log8j.Logger.Info("创建数据库连接...")
	//连接redis
	err:=myredis.NewRedisClient(
		config.Get(config.ADDR),
		"",
	        config.Get(config.DB),
	)

	if err != nil {
		log8j.Logger.Error("创建redis连接失败..." + err.Error())
	}else {
		log8j.Logger.Info("创建redis连接成功...")


		//连接mysql
		err = database.Connect(
			config.Get(config.USERNAME),
			config.Get(config.PASSWORD),
			config.Get(config.URL),
			config.Get(config.DATABASE))
		if err != nil {
			log8j.Logger.Error("创建数据库连接失败..." + err.Error())
		} else {
			log8j.Logger.Info("创建数据库连接成功...")
			saveWeather()
			//saveWeatherDetail()
			//一小时获取一次
			ticker := time.NewTicker(time.Hour * 1)
			go func() {
				for _ = range ticker.C {
					saveWeather()
					saveWeatherDetail()
				}
			}()
		}
	}
}

//保存天气信息
func saveWeather() {
	log8j.Logger.Info("获取武汉天气信息，从wenservice获取")
	var (
		weather weather.Weather
		err     error
	)
	/**
	如果失败至多重复三次
	*/
	for i := 3; i > 0; i-- {
		weather, err = webservice.GetWeather("武汉")
		if err != nil {
			log8j.Logger.Error("获取天气信息失败..." + err.Error())
			continue
		}
		num, err := database.Insert(weather)
		if num < 0 || err != nil {
			log8j.Logger.Error("获取天气信息成功，数据写入数据库失败..." + err.Error())
			continue
		}
		log8j.Logger.Info(weather.Date + " " + weather.City + " " + weather.Situation)
		break
	}
}

func saveWeatherDetail() {
	log8j.Logger.Info("从web抓取天气信息")
	result, _ := database.QueryCode()
	codes := strings.Split(result, "#")
	for i := 0; i < len(codes); i++ {
		if len(codes[i]) > 0 {
			for j := 3; j > 0; j-- {
				weather, err := web.GetWeather(codes[i])
				if err != nil {
					log8j.Logger.Error(err.Error())
					continue
				}
				num, err := database.InsertWeatherDetail(weather, "t"+codes[i])
				if num < 0 || err != nil {
					log8j.Logger.Error(err.Error())
					continue
				}
				fmt.Println("t" + codes[i])
				break
			}
			time.Sleep(time.Second * 1) //减慢访问速度，防止超过限制
		}

	}
}

//获取武汉天气信息
func getWeather(w http.ResponseWriter, r *http.Request) {
	var weatherNow weather.Weather
	var err error
	if myredis.IsAccess(getIP(r.RemoteAddr)) {
		log8j.Logger.Info(r.RemoteAddr + " 获取武汉天气信息")
		weatherNow, err = database.Query("city", "武汉")
		checkError(err, w)
		t, err := template.ParseFiles("view/weather.html")
		checkError(err, w)
		t.Execute(w, weatherNow)
	} else {
		w.Write([]byte("访问过于频繁"))
	}

}

//根据城市获取天气信息html
func getWeatherDetail(w http.ResponseWriter, r *http.Request) {
	if myredis.IsAccess(getIP(r.RemoteAddr)) {

		cityname := r.FormValue("cityname")
		if len(cityname) <= 0 {
			cityname = "武汉"
		}
		log8j.Logger.Info(r.RemoteAddr + " 获取" + cityname + "天气信息")
		code, err := database.QueryCodeByCity(cityname)
		if err != nil {
			log8j.Logger.Error(err.Error())
			w.Write([]byte("城市名称有误或不支持该城市"))
		} else {
			weatherday, err := database.QueryNewestWeatherDetail("t" + code)
			checkError(err, w)
			t, err := template.ParseFiles("view/weatherdetail.html")
			checkError(err, w)
			weatherview := weather.NewWeatherView(weatherday)
			t.Execute(w, weatherview)
		}
	} else {
		w.Write([]byte("访问过于频繁"))
	}

}

//根据城市获取天气信息jsop
func getWeatherDetailJson(w http.ResponseWriter, r *http.Request) {
	if myredis.IsAccess(getIP(r.RemoteAddr)) {
		cityname := r.FormValue("cityname")
		if len(cityname) <= 0 {
			cityname = "武汉"
		}
		log8j.Logger.Info(r.RemoteAddr + " 获取天气信息:" + cityname)
		code, err := database.QueryCodeByCity(cityname)
		if err != nil {
			log8j.Logger.Error(err.Error())
			w.Write([]byte("城市名称有误或不支持该城市"))
		} else {
			weatherday, err := database.QueryNewestWeatherDetail("t" + code)
			checkError(err, w)
			weatherview := weather.NewWeatherView(weatherday)
			bytes, err := json.Marshal(weatherview)
			checkError(err, w)
			result := "callback(" + string(bytes) + ")"
			w.Write([]byte(result))
		}
	} else {
		w.Write([]byte("访问过于频繁"))
	}

}

func getWeatherJson(w http.ResponseWriter, r *http.Request) {
	if myredis.IsAccess(getIP(r.RemoteAddr)) {
		cityname := r.FormValue("cityname")
		if len(cityname) <= 0 {
			w.Write([]byte("cityname不能为空"))
		}
		log8j.Logger.Info(r.RemoteAddr + " 获取天气信息:" + cityname)
		code, err := database.QueryCodeByCity(cityname)
		if err != nil {
			log8j.Logger.Error(err.Error())
			w.Write([]byte("城市名称有误或不支持该城市"))
		} else {
			weatherday, err := database.QueryNewestWeatherDetail("t" + code)
			checkError(err, w)
			weatherview := weather.NewWeatherView(weatherday)
			bytes, err := json.Marshal(weatherview)
			checkError(err, w)
			w.Write([]byte(bytes))
		}
	} else {
		w.Write([]byte("访问过于频繁"))
	}
}

func getTodayWeather(w http.ResponseWriter, r *http.Request) {
	t, err := template.ParseFiles("view/cityweather.html")
	checkError(err, w)
	t.Execute(w, nil)
}

func getProvince(w http.ResponseWriter, r *http.Request) {
	provinces:=myredis.GetValue("provinces")
	if provinces!="" {
		w.Write([]byte(provinces))
	} else {
		list, err := database.QueryProvince()
		checkError(err, w)
		bytes, err := json.Marshal(list)
		checkError(err, w)
		myredis.PutKeyValue("provinces", bytes, time.Hour*12)
		w.Write(bytes)
	}

}

func getCity(w http.ResponseWriter, r *http.Request) {
	pid := r.FormValue("pid")
	if len(pid) <= 0 {
		w.Write([]byte("pid不能为空"))
	}
	citys:=myredis.GetValue("provinceid:" + pid)
	if citys != "" {
		w.Write([]byte(citys))
	} else {
		clist, err := database.QueryCity(pid)
		checkError(err, w)
		cbytes, err := json.Marshal(clist)
		checkError(err, w)
		myredis.PutKeyValue("provinceid:" + pid, cbytes, time.Minute*1)
		w.Write(cbytes)
	}
}

func checkError(err error, w http.ResponseWriter) {
	if err != nil {
		log8j.Logger.Error(err.Error())
		w.Write([]byte("出现错误"))
	}

}

func getIP(addr string) string {
	str := strings.Split(addr, ":")
	return str[0]
}

func main() {
	startHttpServer()
}
