# weather
A small program about the weather<br>

一个小程序从网上收集一些城市每天的天气信息

# 依赖

* [github.com/go-sql-driver/mysql](http://github.com/go-sql-driver/mysql) mysql包
* [github.com/antonholmquist/jason](http://github.com/antonholmquist/jason) json包

# 模块

*   web 从网络收集天气信息
*   webservice 从webservice收集天气信息，但是好像有访问次数的限制
*   database 负责存取数据（未来计划写成orm方式的）
*   weather 存放数据的结struct
*   config 简单读取config中的配置信息
*   log 用于记录日志

# 流程

1. 读取配置文件信息
2. 初始化日志
3. 建立数据库连接
4. 从网络获取天气信息
5. 提供服务

# 服务

* /wuhan <br>
获取武汉天气，因为使用的是webservice，怕有访问次数限制，所以只提供了一个城市
* /getJson<br>
获取当天实时天气信息,返回Json格式数据，可以使用参数cityname，例如/getJson?cityname=北京
* /<br>
获取当天实时天气信息,返回html,同样可以使用参数cityname

## 实例

[实例地址](http://120.24.64.3)

