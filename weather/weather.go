package weather

type Weather struct {
	Province    string //省份
	City        string //城市
	Datetime    string //查询时间
	Temperature string //气温范围
	Date        string //日期
	Situation   string //天气概述
	Wind        string //风
	Icon1       string //图标1
	Icon2       string //图标2
	Descript    string //描述
	Advice      string //建议
}

func NewWeather(
	province string,
	city string,
	datetime string,
	temperature string,
	date string,
	situation string,
	wind string,
	icon1 string,
	icon2 string,
	descript string,
	advice string) Weather {

	return Weather{
		province,
		city,
		datetime,
		temperature,
		date,
		situation,
		wind,
		icon1,
		icon2,
		descript,
		advice}
}

func NewNULLWeather() Weather{
	return Weather{}
}

type WeatherDetail struct {
	Cityname       string //城市名称
	City           string //城市代码
	Currenttemp    string //当前气温
	Currentweather string //当前天气
	Currentwd      string //当前风
	Currentwde     string
	Currentws      string
	Aqi            string //aqi
	Aqipm25        string
	Time           string //更新时间
	Date           string //日期

	Temp    string //最高温度
	Tempn   string //最低温度
	Weather string //天气
	Wd      string
	Ws      string
}

func NewWeatherDetail(
	cityname string,
	city string,
	currenttemp string,
	currentweather string,
	currentwd string,
	currentwde string,
	currentws string,
	aqi string,
	aqipm25 string,
	time string,
	date string,

	temp string,
	tempn string,
	weather string,
	wd string,
	ws string,
) WeatherDetail {

	return WeatherDetail{
		cityname,
		city,
		currenttemp,
		currentweather,
		currentwd,
		currentwde,
		currentws,
		aqi,
		aqipm25,
		time,
		date,
		temp,
		tempn,
		weather,
		wd,
		ws}
}

type WeatherView struct{
	WeatherDetail
	Image string
}

func NewWeatherView(weather WeatherDetail)WeatherView{
	image:=getImage(weather.Currentweather)
	return  WeatherView{weather,image}
}

func getImage(weather string)string{
	switch weather {
	case "晴":
		return "1.png"
	case "多云":
		return "5.png"
	case "阴":
		return "3.png"
	case "阵雨":
		return "8.png "
	case "雷阵雨":
		return "15.png"
	case "雷阵雨并伴有冰雹":
		return "16.png"
	case "雨加雪":
		return "14.png"
	case "雨":
		return "8.png"
	case "小雨":
		return "8.png"
	case "中雨":
		return "9.png"
	case "大雨":
		return "10.png"
	case "暴雨":
		return "11.png"
	case "大暴雨":
		return "12.png"
	case "特大暴雨":
		return "13.png"
	case "阵雪":
		return "a_13.gif"
	case "小雪":
		return "17.png"
	case "中雪":
		return "18.png"
	case "大雪":
		return "19.png"
	case "暴雪":
		return "20.png"
	case "雾":
		return "a_18.gif"
	case "冻雨":
		return "a_19.gif"
	case "沙尘暴":
		return "a_20.gif"
	case "小雨-中雨":
		return "a_21.gif"
	case "中雨-大雨":
		return "a_22.gif"
	case "大雨-暴雨":
		return "a_23.gif"
	case "暴雨-大暴雨":
		return "a_24.gif"
	case "大暴雨-特大暴雨":
		return "a_25.gif"
	case "小雪-中雪":
		return "a_26.gif"
	case "中雪-大雪":
		return "a_27.gif"
	case "大雪-暴雪":
		return "a_28.gif"
	case "浮尘":
		return "a_29.gif"
	case "扬沙":
		return "a_30.gif"
	case "强沙尘暴":
		return "a_31.gif"
	default:
		return "a_nothing.gif"
	}

}