package main

import (
	"bufio"
	"fmt"
	"os"
	"io"
	"github.com/axgle/mahonia"
	"strings"
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
)


var db *sql.DB
func main(){

	db, _ = sql.Open("mysql", "root:qq329088816@tcp(localhost:3306)/weather?charset=utf8")
	db.SetMaxOpenConns(2000)
	db.SetMaxIdleConns(1000)
	db.Ping()

	rows, _ := db.Query("SELECT code FROM city")
	for rows.Next() {
		var code string
		rows.Scan(&code)
		if(len(code)>0) {
			fmt.Println(code)
			sql:= "DROP TABLE IF EXISTS `t" + code + "`;"+
				"CREATE TABLE `t" + code + "` (" +
				"`id` int(11) NOT NULL AUTO_INCREMENT," +
				"`cityname` varchar(15) DEFAULT NULL," +
				"`city` varchar(15) DEFAULT NULL," +
				"`currenttemp` varchar(6) DEFAULT NULL," +
				"`currentweather` varchar(20) DEFAULT NULL," +
				"`currentwd` varchar(20) DEFAULT NULL," +
				"`currentwde` varchar(20) DEFAULT NULL," +
				"`currentws` varchar(20) DEFAULT NULL," +
				"`aqi` varchar(5) DEFAULT NULL," +
				"`aqipm25` varchar(5) DEFAULT NULL," +
				"`time` varchar(15) DEFAULT NULL," +
				"`date` varchar(15) DEFAULT NULL," +
				"`temp` varchar(5) DEFAULT NULL," +
				"`tempn` varchar(5) DEFAULT NULL," +
				"`weather` varchar(20) DEFAULT NULL," +
				"`wd` varchar(20) DEFAULT NULL," +
				"`ws` varchar(20) DEFAULT NULL," +
				"PRIMARY KEY (`id`)" +
				") ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;"

			result,_:=db.Exec(sql,nil)
			result.RowsAffected()
		}

	}

	//ReadLine("d:\\city.txt",processLine)
}

func processLine(line []byte) {
	dec := mahonia.NewDecoder("GB18030")
	stringline:=string(line)
	if strings.Contains(stringline,"=") {
		str := strings.Split(dec.ConvertString(stringline), "=")

		fmt.Println(str[1])
		sql:=strings.Replace(str[1]," \r","%'",-1)
		sql = "SELECT id FROM city WHERE name like '"+ sql
		fmt.Println(sql)
		rows, _ := db.Query(sql)

		var id int
		for rows.Next() {
			rows.Scan(&id)
		}
		fmt.Println(id)

		if id>0 {
			stmt, _:= db.Prepare(`UPDATE city SET code=? WHERE id=?`)

			res, _:= stmt.Exec(str[0], id)

			res.RowsAffected()
		}
	}
}

func ReadLine(filePth string, hookfn func([]byte)) error {
	f, err := os.Open(filePth)
	if err != nil {
		return err
	}
	defer f.Close()

	bfRd := bufio.NewReader(f)
	for {
		line, err := bfRd.ReadBytes('\n')
		hookfn(line) //放在错误处理前面，即使发生错误，也会处理已经读取到的数据。
		if err != nil { //遇到任何错误立即返回，并忽略 EOF 错误信息
			if err == io.EOF {
				return nil
			}
			return err
		}
	}
	return nil
}