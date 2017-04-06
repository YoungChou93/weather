package weatherlog

import (
	"os"
	"log"
	"github.com/YoungChou93/weather/config"
)

var logger *log.Logger

func LogInit(){
	logfile,err := os.OpenFile(config.Get(config.LOGFILE), os.O_APPEND|os.O_RDWR|os.O_CREATE, 0777);
	if err!=nil {
		logger.Println("Error is ", err)
		os.Exit(-1);
	}
	logger = log.New(logfile,"\r\n",log.Ldate|log.Ltime|log.Llongfile);
}

func GetLog()*log.Logger{
	return logger
}