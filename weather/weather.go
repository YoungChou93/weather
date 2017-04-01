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
	return Weather{province,city, datetime, temperature, date, situation, wind, icon1, icon2, descript, advice}
}

func NewNullWeather()Weather{
	return Weather{}
}
