package main

import (
	"github.com/YoungChou93/weather/database"
	"fmt"
	"net/http"
	"log"
	"github.com/YoungChou93/weather/webservice"
	"time"
	"github.com/YoungChou93/weather/weather"
	"html/template"
	"os"
	"strings"
	"github.com/YoungChou93/weather/web"
	"github.com/kubernetes/kubernetes/staging/src/k8s.io/apimachinery/pkg/util/json"
)
var logger *log.Logger

//启动web服务
func startHttpServer() {
	http.HandleFunc("/getWeather", getWeather)
	http.HandleFunc("/", getWeatherDetail)
	http.HandleFunc("/getJson", getWeatherDetailJson)
	http.Handle("/static/", http.StripPrefix("/static/",http.FileServer(http.Dir("static"))))
	err := http.ListenAndServe(":9090", nil)
	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}

}
func init(){
	//初始化日志
	logInit()
	fmt.Println("程序启动...")
	logger.Println("创建数据库连接...")
	err :=database.Connect("root","qq329088816","weather")
	if err!=nil{
		fmt.Println("创建数据库连接失败...")
		logger.Println("创建数据库连接失败...")
	}else{
		fmt.Println("创建数据库连接成功...")
		logger.Println("创建数据库连接成功...")
		fmt.Println("首次获取天气信息...")
		logger.Println("首次获取天气信息...")
		saveWeather()
		saveWeatherDetail()
		//一小时获取一次
		ticker := time.NewTicker(time.Hour * 1)
		go func() {
			for _ = range ticker.C {
				fmt.Println("获取天气信息...")
				logger.Println("获取天气信息...")
				saveWeather()
				saveWeatherDetail()
			}
		}()
	}
}
//初始化日志
func logInit(){
	logfile,err := os.OpenFile("d:\\weather.log",os.O_RDWR|os.O_CREATE,0);
	if err!=nil {
		fmt.Printf("%s\r\n",err.Error());
		os.Exit(-1);
	}
	logger = log.New(logfile,"\r\n",log.Ldate|log.Ltime|log.Llongfile);
}
//保存天气信息
func saveWeather(){
	var(
		weather weather.Weather
		err error
	)
	/**
	如果失败至多重复三次
	 */
	for i:=3;i>0;i-- {
		weather,err=webservice.GetWeather("武汉");
		if err!=nil {
			fmt.Print("获取失败")
			logger.Println("获取天气信息失败...")
			fmt.Println(err)
			continue
		}
		if database.Insert(weather)<0{
			fmt.Print("获取成功，数据写入数据库失败")
			logger.Println("获取天气信息成功，数据写入数据库失败...")
			continue
		}
		fmt.Print(weather.Date)
		fmt.Print(" ")
		fmt.Print(weather.City)
		fmt.Print(" ")
		fmt.Println(weather.Situation)
		logger.Println(weather.Date+" "+weather.City+" "+weather.Situation)
		break
	}
}

func saveWeatherDetail(){
	logger.Println("获取天气信息，weatherdetail")
	result,_:=database.QueryCode()
	codes:=strings.Split(result,"#")
	for i:=0;i<len(codes);i++{
		if len(codes[i])>0 {
			for j:=3;j>0;j-- {
				weather, err := web.GetWeather(codes[i])
				if err != nil {
					continue
				}
				if database.InsertWeatherDetail(weather, "t"+codes[i]) <0 {
					continue
				}
				fmt.Println("t"+codes[i])
				break
			}
			time.Sleep(time.Second*1)
		}

	}



}


//获取天气信息
func getWeather(w http.ResponseWriter, r *http.Request){
	logger.Println(r.RemoteAddr+" 获取天气信息")
	weather,err:=database.Query("city","武汉")
	if err!=nil {
		fmt.Println(err)
	}
	t, _ := template.ParseFiles("view/weather.html")
	t.Execute(w, weather)
}

func getWeatherDetail(w http.ResponseWriter, r *http.Request){
	cityname:=r.FormValue("cityname")
	if len(cityname)<=0{
		cityname="武汉"
	}
	code,err:=database.QueryCodeByCity(cityname)
	if err!=nil {
		fmt.Println(err)
	}
	weather,_:=database.QueryNewestWeatherDetail("t"+code)
	if err!=nil {
		fmt.Println(err)
	}
	t, _ := template.ParseFiles("view/weatherdetail.html")
	t.Execute(w, weather)
}

func getWeatherDetailJson(w http.ResponseWriter, r *http.Request){
	cityname:=r.FormValue("cityname")
	if len(cityname)<=0{
		cityname="武汉"
	}
	code,err:=database.QueryCodeByCity(cityname)
	if err!=nil {
		fmt.Println(err)
	}
	weather,_:=database.QueryNewestWeatherDetail("t"+code)
	if err!=nil {
		fmt.Println(err)
	}
	bytes,_:=json.Marshal(weather)
	if err!=nil {
		fmt.Println(err)
	}
	w.Write(bytes)
}



func main(){
	startHttpServer()
}