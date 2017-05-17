package config

import (
	"os"
	"bufio"
	"strings"
	"io"
	"errors"
)

var config map[string]string

const(
	USERNAME = "username"  //数据库用户名
	PASSWORD = "password"  //数据库密码
	URL="url"              //数据库url
	DATABASE="database"    //数据库名称
	LOGFILE="logfile"      //日志文件存放位置
	PORT="port"            //服务启动端口
	STATICURL="staticurl"  //静态资源地址
)


func LoadConfig()  {
	config = make(map[string]string)
	f,err := os.Open("config/config.ini")
	if err!=nil {
		panic(err)
	}
	buf := bufio.NewReader(f)
	for {
		//按照换行读取每一行
		l, err := buf.ReadString('\n')
		line := strings.TrimSpace(l)
		if err != nil {
			if err != io.EOF {
				//return err
				panic(err)
			}
			if len(line) == 0 {
				break
			}
		}
		if strings.Contains(line,"=") {
			index:= strings.IndexAny(line, "=")
			config[strings.TrimSpace(line[0:index])] = strings.TrimSpace(line[index+1:])
		}
	}
}

func Get(key string)string{
	value:=config[key]
	if len(value)<=0{
		panic(errors.New(key+"为空"))
	}
	return value
}


