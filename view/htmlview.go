package view

import "github.com/YoungChou93/weather/weather"

type HtmlView struct{
	StaticResUrl string
	weather.Weather
	weather.WeatherView
}

func NewView(url string,w1 weather.Weather,w2 weather.WeatherView)HtmlView{
	return  HtmlView{url,w1,w2}
}
