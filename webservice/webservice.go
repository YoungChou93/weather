package webservice

import (
	"encoding/xml"
	"github.com/YoungZhou93/weather/weather"
	"io/ioutil"
	"net/http"
	"strings"
)

/**
通过城市名获取天气信息
*/
func getWeatherFromWebService(city string) ([]byte, error) {
	httpRequest, err := http.NewRequest("GET", "http://www.webxml.com.cn/WebServices/WeatherWebService.asmx/getWeatherbyCityName?theCityName="+city, nil)
	if err != nil {
		return nil, err
	}
	client := http.DefaultClient
	res, err := client.Do(httpRequest)
	if err != nil {
		return nil, err
	}
	body := res.Body
	defer body.Close()
	bodyByte, err := ioutil.ReadAll(body)
	if err != nil {
		return nil, err
	}
	return bodyByte, nil
}

type WeatherXML struct {
	XMLName xml.Name `xml:"ArrayOfString"`
	Strs    []string `xml:"string"`
}

/**
将xml转化为Weather
xml格式
<string>湖北</string>
<string>武汉</string>
<string>57494</string>
<string>57494.jpg</string>
<string>2017-3-31 19:25:38</string>
<string>7℃/18℃</string>
<string>3月31日 多云</string>
<string>无持续风向微风转3-4级</string>
<string>1.gif</string>
<string>1.gif</string>
<string>今日天气实况：气温：13℃；风向/风力：北风 2级；湿度：73%；紫外线强度：弱。空气质量：中。</string>
<string>
紫外线指数：弱，辐射较弱，涂擦SPF12-15、PA+护肤品。 感冒指数：极易发，温差极大，湿度大，极易感冒。 穿衣指数：较冷，建议着厚外套加毛衣等服装。 洗车指数：较适宜，无雨且风力较小，易保持清洁度。 运动指数：较适宜，请适当降低运动强度。 空气污染指数：中，易感人群应适当减少室外活动。
</string>
*/
func xmlToWeather(xmlbody []byte) (weather.Weather, error) {
	w := WeatherXML{}
	err := xml.Unmarshal(xmlbody, &w)
	if err != nil {
		return weather.NewNullWeather(), err
	}
	str:=strings.Split(w.Strs[6]," ")
	weather := weather.NewWeather(w.Strs[0], w.Strs[1], w.Strs[4], w.Strs[5], str[0], str[1],w.Strs[7], w.Strs[8], w.Strs[9], w.Strs[10], w.Strs[11],)
	return weather, nil
}

func GetWeather(city string) (weather.Weather, error) {
	res, err := getWeatherFromWebService(city)
	if err != nil {
		return weather.NewNullWeather(), err
	}
	todayWeather, err := xmlToWeather(res)
	if err != nil {
		return weather.NewNullWeather(), err
	}
	return todayWeather, nil
}
