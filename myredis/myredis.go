package myredis

import (
	"github.com/go-redis/redis"
	"fmt"
	"os"
	"time"
	"strconv"
	"strings"
)

const (
	FREQUENTCY_TENSECOND = 10
	FREQUENTCY_MINUTE =20
	FREQUENTCY_HOUE =30
	NOLIMITIP = "115.159.56.151&[_"
)

var Client = createClient()

func createClient() *redis.Client {
	client := redis.NewClient(&redis.Options{
		Addr:     "120.24.64.3:6379",
		Password: "",
		DB:       0,
	})

	// 通过 cient.Ping() 来检查是否成功连接到了 redis 服务器
	_, err := client.Ping().Result()
	if err!=nil {
		fmt.Println(err)
		os.Exit(-1)
	}

	return client
}

func IsAccess(ip string) bool{
	if  strings.Contains(NOLIMITIP,ip) {
		return true
	}
	secondKey:=ip+"_second"
	minuteKey:=ip+"_minute"
	hourKey:=ip+"_hour"
	val_second,err1 := Client.Get(secondKey).Result()
	val_minute,err2 := Client.Get(minuteKey).Result()
	val_hour,err3 := Client.Get(hourKey).Result()

	return isItemAccess(secondKey,time.Second*10,FREQUENTCY_TENSECOND,err1,val_second) &&
		isItemAccess(minuteKey,time.Minute,FREQUENTCY_MINUTE,err2,val_minute) &&
	        isItemAccess(hourKey,time.Hour,FREQUENTCY_HOUE,err3,val_hour)
}

func isItemAccess(key string,time time.Duration,frequentcy int,err error,val string) bool{
	if err != nil{
		Client.Set(key,"0",time)
	}else{
		num,er:=strconv.Atoi(val)
		if er != nil {
			fmt.Println(er)
			os.Exit(-1)
		}
		if num > frequentcy{
			return false
		}
	}
	Client.Incr(key)
	return true
}
