package main

import (
	"encoding/json"
	"fmt"
	"github.com/YoungChou93/weather/config"
	"github.com/YoungChou93/weather/database"
	"github.com/YoungChou93/weather/log"
	"github.com/YoungChou93/weather/weather"
	"github.com/YoungChou93/weather/web"
	"github.com/YoungChou93/weather/webservice"
	"html/template"
	"log"
	"net/http"
	"strings"
	"time"
)

var logger *log.Logger

//启动web服务
func startHttpServer() {
	http.HandleFunc("/wuhan", getWeather)
	http.HandleFunc("/", getWeatherDetail)
	http.HandleFunc("/getJson", getWeatherDetailJson)
	http.Handle("/static/", http.StripPrefix("/static/", http.FileServer(http.Dir("static"))))
	err := http.ListenAndServe(config.Get(config.PORT), nil)
	if err != nil {
		logger.Println("Error is ", err)
	}

}
func init() {
	//加载配置文件
	config.LoadConfig()
	//初始化日志
	weatherlog.LogInit()
	logger = weatherlog.GetLog()
	logger.Println("程序启动...")
	logger.Println("创建数据库连接...")
	err := database.Connect(
		config.Get(config.USERNAME),
		config.Get(config.PASSWORD),
		config.Get(config.URL),
		config.Get(config.DATABASE))
	if err != nil {
		logger.Println("创建数据库连接失败...", err)
	} else {
		logger.Println("创建数据库连接成功...")
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

//保存天气信息
func saveWeather() {
	logger.Println("获取天气信息，weather")
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
			logger.Println("获取天气信息失败...", err)
			continue
		}
		num, err := database.Insert(weather)
		if num < 0 || err != nil {
			logger.Println("获取天气信息成功，数据写入数据库失败...", err)
			continue
		}
		logger.Println(weather.Date + " " + weather.City + " " + weather.Situation)
		break
	}
}

func saveWeatherDetail() {
	logger.Println("获取天气信息，weatherdetail")
	result, _ := database.QueryCode()
	codes := strings.Split(result, "#")
	for i := 0; i < len(codes); i++ {
		if len(codes[i]) > 0 {
			for j := 3; j > 0; j-- {
				weather, err := web.GetWeather(codes[i])
				if err != nil {
					logger.Println("Error is ", err)
					continue
				}
				num, err := database.InsertWeatherDetail(weather, "t"+codes[i])
				if num < 0 || err != nil {
					logger.Println("Error is ", err)
					continue
				}
				fmt.Println("t" + codes[i])
				break
			}
			time.Sleep(time.Second * 1) //减慢访问速度，防止超过限制
		}

	}
}

//获取天气信息
func getWeather(w http.ResponseWriter, r *http.Request) {

	logger.Println(r.RemoteAddr + " 获取天气信息")
	weather, err := database.Query("city", "武汉")
	checkError(err, w)
	t, err := template.ParseFiles("view/weather.html")
	checkError(err, w)
	t.Execute(w, weather)

}

func getWeatherDetail(w http.ResponseWriter, r *http.Request) {

	logger.Println(r.RemoteAddr + " 获取天气信息")
	cityname := r.FormValue("cityname")
	if len(cityname) <= 0 {
		cityname = "武汉"
	}
	code, err := database.QueryCodeByCity(cityname)
	if err != nil {
		logger.Println("Error is ", err)
		w.Write([]byte("城市名称有误或不支持该城市"))
	} else {
		weatherday, err := database.QueryNewestWeatherDetail("t" + code)
		checkError(err, w)
		t, err := template.ParseFiles("view/weatherdetail.html")
		checkError(err, w)
		weatherview := weather.NewWeatherView(weatherday)
		t.Execute(w, weatherview)
	}

}

func getWeatherDetailJson(w http.ResponseWriter, r *http.Request) {

	cityname := r.FormValue("cityname")
	if len(cityname) <= 0 {
		cityname = "武汉"
	}
	logger.Println(r.RemoteAddr + " 获取天气信息:" + cityname)
	code, err := database.QueryCodeByCity(cityname)
	if err != nil {
		logger.Println("Error is ", err)
		w.Write([]byte("城市名称有误或不支持该城市"))
	} else {
		weather, err := database.QueryNewestWeatherDetail("t" + code)
		checkError(err, w)
		bytes, err := json.Marshal(weather)
		checkError(err, w)
		w.Write(bytes)
	}

}

func checkError(err error, w http.ResponseWriter) {
	if err != nil {
		logger.Println("Error is ", err)
		w.Write([]byte("出现错误"))
	}

}

func main() {
	startHttpServer()

}
