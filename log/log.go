package log8j

import (
	"log"
	"os"
	"fmt"
	"time"
	"strconv"
)

type Log8j interface {
	Init(path string ,appname string)
	Info(info string)
	Warn(warn string)
	Error(error string)
}

const(
	INFO = iota
	WARN
	ERROR
)

type Log8jDefault struct {
	logMap map[int]*LogWriter
	path string     //日志文件目录 形如d:\\log\\ usr/local/log/ 目录必须已经存在
	appname string  //应用名称
}

var Logger =&Log8jDefault{}

func NewLog8jDefault(path string ,appname string)*Log8jDefault{
	logMap:= make(map[int]*LogWriter)
	return &Log8jDefault{logMap,path,appname}
}

func (lg*Log8jDefault)Init(path string ,appname string){
	logMap:= make(map[int]*LogWriter)
	lg.appname=appname
	lg.path=path
	lg.logMap=logMap
}

func (lg*Log8jDefault)Info(info string){
	lg.write("INFO:"+info,INFO)
}

func (lg*Log8jDefault)Warn(warn string){
	lg.write("WARN:"+warn,INFO)
	lg.write("WARN:"+warn,WARN)
}

func (lg*Log8jDefault)Error(err string){
	lg.write("ERROR:"+err,INFO)
	lg.write("ERROR:"+err,WARN)
	lg.write("ERROR:"+err,ERROR)
}

func (lg*Log8jDefault)write(message string,level int){
	lw:=lg.logMap[level]
	if lw==nil{
		lw=NewLogWriter(lg.path,lg.appname,level)
		lg.logMap[level]=lw
	}
	lw.fileCapacity(lg.path,lg.appname,level)
	lw.write(message)
}


type LogWriter struct{
	logger *log.Logger
        logfile *os.File
}

func getLogFileName(appname string,level int)string{
	var levelStr string
	switch level {
	case INFO :
		levelStr="INFO"
	case WARN :
		levelStr="WARN"
	case ERROR :
		levelStr="ERROR"
	}
	filename:=appname+"-"+levelStr+"-"+strconv.FormatInt(time.Now().Unix(),10)+".log"
	return filename
}

func getLogFile(path string,appname string,level int)*os.File{
	filepath:=path+getLogFileName(appname,level)
	logfile,err := os.OpenFile(filepath, os.O_APPEND|os.O_RDWR|os.O_CREATE, 0777);
	if err!=nil {
		fmt.Println("Error is ", err)
		os.Exit(-1);
	}
	return logfile
}

func NewLogWriter(path string,appname string,level int)*LogWriter{
	logfile:=getLogFile(path,appname,level)
	logger := log.New(logfile,"\r\n",log.Ldate|log.Ltime|log.Llongfile)
	return &LogWriter{logger,logfile}
}


func (lw *LogWriter) fileCapacity(path string,appname string,level int){
	fileinfo,_:=lw.logfile.Stat()
	if fileinfo.Size()>= 1024* 1024*2{
		lw.logfile = getLogFile(path,appname,level)
		lw.logger = log.New(lw.logfile,"\r\n",log.Ldate|log.Ltime|log.Llongfile)
	}
}

func (lw *LogWriter) write(message string){
	lw.logger.Output(4,message)
}