package main

import (
	"io/ioutil"
	"net/http"
	"fmt"
	/*"bytes"
	"github.com/PuerkitoBio/goquery"*/
	"strings"
	"bufio"
	"os"
	"io"
)

func main() {
	//httpRequest, err := http.NewRequest("GET", "http://www.weather.com.cn/weather1d/101200101.shtml", nil)
	//httpRequest, err := http.NewRequest("GET", "http://d1.weather.com.cn/sk_2d/101200101.html", nil)
	httpRequest, err := http.NewRequest("GET", "http://d1.weather.com.cn/dingzhi/101200101.html", nil)
	//httpRequest, err := http.NewRequest("GET", "http://www.weather.com.cn/data/cityinfo/101200101.html", nil)
	//httpRequest, err := http.NewRequest("GET", "http://www.weather.com.cn/data/sk/101200101.html", nil)
	if err != nil {

	}
	httpRequest.Header.Set("Referer","http://www.weather.com.cn/weather1d/101200101.shtml")
	client := http.DefaultClient
	res, err := client.Do(httpRequest)
	if err != nil {

	}
	body := res.Body
	defer body.Close()
	bodyByte, err := ioutil.ReadAll(body)
	if err != nil {

	}
	jsonString:=string(bodyByte)
	fmt.Println(jsonString)

	str:=strings.Split(jsonString,";var")
	str=strings.Split(str[0]," =")
	fmt.Println(str[1])
	/*bodyReader := bytes.NewReader(bodyByte)
	var query *goquery.Document
	query, _ = goquery.NewDocumentFromReader(bodyReader);
	var text string
	nodes:=query.Find(".clearfix li");
	text =goquery.NewDocumentFromNode(nodes.Get(0)).Find("p").Text()

	fmt.Println(text)
*/




}


