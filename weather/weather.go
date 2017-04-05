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
	return Weather{province, city, datetime, temperature, date, situation, wind, icon1, icon2, descript, advice}
}

func NewNullWeather() Weather {
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
	return WeatherDetail{cityname, city, currenttemp, currentweather, currentwd, currentwde, currentws, aqi, aqipm25, time, date, temp, tempn, weather, wd, ws}
}

func NewNullWeatherDetail() WeatherDetail {
	return WeatherDetail{}
}
