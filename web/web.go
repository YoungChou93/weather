package web

import (
	"io/ioutil"
	"net/http"
	"github.com/antonholmquist/jason"
	"strings"
	"github.com/YoungChou93/weather/weather"
	"time"
)

/*
{
    "nameen":"wuhan",
    "cityname":"武汉",
    "city":"101200101",
    "temp":"15",
    "tempf":"59",
    "WD":"东风",
    "wde":"E ",
    "WS":"2级",
    "wse":"<12km/h",
    "SD":"99%",
    "time":"08:20",
    "weather":"阴",
    "weathere":"Overcast",
    "weathercode":"d02",
    "qy":"1010.3",
    "njd":"1367",
    "sd":"99%",
    "rain":"0",
    "rain24h":"1.8",
    "aqi":"108",
    "limitnumber":"",
    "aqi_pm25":"108",
    "date":"04月05日(星期三)"
}
 */
/*
{
    "weatherinfo":{
        "city":"101200101",
        "cityname":"武汉",
        "temp":"20℃",
        "tempn":"15℃",
        "weather":"小雨转大雨",
        "wd":"东北风转东风",
        "ws":"微风",
        "weathercode":"d7",
        "weathercoden":"n9",
        "fctime":"20170405080000"
    }
}
 */
func getWeatherFromWeb(url string)(string,error){
	httpRequest, err := http.NewRequest("GET", url, nil)
	if err != nil {
            return "",err
	}
	httpRequest.Header.Set("Referer","http://www.weather.com.cn")
	client := http.DefaultClient
	res, err := client.Do(httpRequest)
	if err != nil {
		return "",err
	}
	body := res.Body
	defer body.Close()
	bodyByte, err := ioutil.ReadAll(body)
	if err != nil {
		return "",err
	}
	return string(bodyByte),nil
}
//获取天气装入strurct
func GetWeather(citycode string)(weather.WeatherDetail,error){
	url :="http://d1.weather.com.cn/sk_2d/"+citycode+".html"
	jsonString,err:=getWeatherFromWeb(url)
	if err != nil {
             return weather.NewNullWeatherDetail(),err
	}
	str:=strings.Split(jsonString,"= ")
	jsonString=str[1]
	json, err:= jason.NewObjectFromBytes([]byte(jsonString))
	if err != nil {
		return weather.NewNullWeatherDetail(),err
	}
	cityname,_:=json.GetString("cityname")
	city,_:=json.GetString("city")
	currenttemp,_:=json.GetString("temp")
	currentweather,_:=json.GetString("weather")
	currentwd,_:=json.GetString("WD")
	currentwde,_:=json.GetString("wde")
	currentws,_:=json.GetString("WS")
	aqi,_:=json.GetString("aqi")
	aqipm25,_:=json.GetString("aqi_pm25")
	timenow,_:=json.GetString("time")
	date,_:=json.GetString("date")
	timestamp := time.Now().Unix()
	tm := time.Unix(timestamp, 0)
	date=tm.Format("2006-01-02")

	url = "http://d1.weather.com.cn/dingzhi/"+citycode+".html"
	jsonString,err=getWeatherFromWeb(url)
	if err != nil {
		return weather.NewNullWeatherDetail(),err
	}
	str=strings.Split(jsonString,";var")
	str=strings.Split(str[0]," =")
	jsonString=str[1]
	json, err = jason.NewObjectFromBytes([]byte(jsonString))
	if err != nil {
		return weather.NewNullWeatherDetail(),err
	}
	temp,_:=json.GetString("weatherinfo","temp")
	tempn,_:=json.GetString("weatherinfo","tempn")
	weatherday,_:=json.GetString("weatherinfo","weather")
	wd,_:=json.GetString("weatherinfo","wd")
	ws,_:=json.GetString("weatherinfo","ws")

	return weather.NewWeatherDetail(cityname, city, currenttemp, currentweather, currentwd, currentwde, currentws, aqi, aqipm25, timenow, date, temp, tempn, weatherday, wd, ws),nil
}
