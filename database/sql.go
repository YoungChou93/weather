package database

import (
	"database/sql"
	"github.com/YoungChou93/weather/weather"
	_ "github.com/go-sql-driver/mysql"
	"errors"
	"bytes"
)

var db *sql.DB

func Connect(user , password , url, database string) error{
	var err error
	db, err = sql.Open("mysql", user+":"+password+"@tcp("+url+")/"+database+"?charset=utf8")
	db.SetMaxOpenConns(2000)
	db.SetMaxIdleConns(1000)
	db.Ping()
	return err
}

func QueryCode() (string,error){
	var buf bytes.Buffer
	rows, err := db.Query("SELECT code FROM city")
	defer rows.Close()
	if err!=nil{
		return "",err
	}
	for rows.Next(){
		var code string
		rows.Scan(&code)
		if len(code)>0{
			buf.WriteString(code)
			buf.WriteString("#")
		}

	}
	return buf.String(),nil
}

func QueryCodeByCity(cityname string)(string,error){
	rows, err := db.Query("SELECT code FROM city where name like'"+cityname+"%'")
	defer rows.Close()
	var code string
	if err!=nil{
		return "",err
	}
	if rows.Next() {
		rows.Scan(&code)
	}else{
		return "",errors.New("error")
	}
	return code,nil
}


//插入一条数据
func Insert(weather weather.Weather) (int64,error) {
	stmt, err := db.Prepare(`INSERT weather (province,city, datetime, temperature, date, situation, wind, icon1, icon2, descript, advice) values (?,?,?,?,?,?,?,?,?,?,?)`)
	if err!=nil {
		return -1,err
	}
	res, err := stmt.Exec(weather.Province, weather.City, weather.Datetime, weather.Temperature, weather.Date, weather.Situation, weather.Wind, weather.Icon1, weather.Icon2, weather.Descript, weather.Advice)
	if err!=nil {
		return -1,err
	}
	num, err := res.RowsAffected()
	if err!=nil {
		return -1,err
	}
	return num,nil
}
//查询最新一条数据
func Query(key string, value string) (weather.Weather,error) {
	rows, err := db.Query("SELECT * FROM weather ORDER BY id DESC LIMIT 1")
	var weatherNew weather.Weather
	defer rows.Close()
	if err!=nil {
		return weatherNew,err
	}

	columns, _ := rows.Columns()
	scanArgs := make([]interface{}, len(columns))
	values := make([]interface{}, len(columns))
	for j := range values {
		scanArgs[j] = &values[j]
	}
	if rows.Next() {
		err = rows.Scan(scanArgs...)
		record := make(map[string]string)
		for i, col := range values {
			if col != nil {
				record[columns[i]] = string(col.([]byte))
			}
		}
		weatherNew=weather.NewWeather(
			record[columns[1]],
			record[columns[2]],
			record[columns[3]],
			record[columns[4]],
			record[columns[5]],
			record[columns[6]],
			record[columns[7]],
			record[columns[8]],
			record[columns[9]],
			record[columns[10]],
			record[columns[11]])
	}else{
		return weatherNew,errors.New("error")
	}
	return weatherNew,nil
}




func InsertWeatherDetail(weather weather.WeatherDetail,table string) (int64,error){
	stmt, err := db.Prepare(`INSERT `+ table +` (cityname, city, currenttemp, currentweather, currentwd, currentwde, currentws, aqi, aqipm25, time, date, temp, tempn, weather, wd, ws) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)`)
	if err!=nil {
		return -1,err
	}
	res, err := stmt.Exec(
		weather.Cityname,
		weather.City,
		weather.Currenttemp,
		weather.Currentweather,
		weather.Currentwd,
		weather.Currentwde,
		weather.Currentws,
		weather.Aqi,
		weather.Aqipm25,
		weather.Time,
		weather.Date,
		weather.Temp,
		weather.Tempn,
		weather.Weather,
		weather.Wd,
		weather.Ws)
	if err!=nil {
		return -1,err
	}
	num, err := res.RowsAffected()
	if err!=nil {
		return -1,err
	}
	return num,nil
}

func QueryNewestWeatherDetail(table string)(weather.WeatherDetail,error) {
	rows, err := db.Query("SELECT * FROM " + table + " ORDER BY id DESC LIMIT 1")
	var weatherNew weather.WeatherDetail
	defer rows.Close()
	if err != nil {
		return weatherNew, err
	}

	columns, _ := rows.Columns()
	scanArgs := make([]interface{}, len(columns))
	values := make([]interface{}, len(columns))
	for j := range values {
		scanArgs[j] = &values[j]
	}
	if rows.Next() {
		err = rows.Scan(scanArgs...)
		record := make(map[string]string)
		for i, col := range values {
			if col != nil {
				record[columns[i]] = string(col.([]byte))
			}
		}
		weatherNew=weather.NewWeatherDetail(
			record[columns[1]],
			record[columns[2]],
			record[columns[3]],
			record[columns[4]],
			record[columns[5]],
			record[columns[6]],
			record[columns[7]],
			record[columns[8]],
			record[columns[9]],
			record[columns[10]],
			record[columns[11]],
			record[columns[12]],
			record[columns[13]],
			record[columns[14]],
			record[columns[15]],
			record[columns[16]])
	}else{
		return weatherNew, errors.New("error")
	}
	return weatherNew,nil
}


