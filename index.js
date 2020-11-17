//创建路由器
const express = require('express');
//加载cors模块
const cors = require('cors');
//加载body-parser模块
const bodyParser = require('body-parser');
//加载mysql模块
const mysql = require('mysql');
const { Console } = require('console');
//引入Mysql连接池模块
const pool = mysql.createPool({
  //数据库服务器的地址
  host: '127.0.0.1',
  //数据库服务器的端口号
  port: 3306,
  //数据库用户的用户名
  user: 'root',
  //数据库用户的密码
  password: '',
  //数据库名
  database: 'cake_perfect',
  //编码方式
  charset: 'utf8',
  //最大连接数
  connectionLimit: 20
});
//引入MD5
const md = require('md5');
//创建web服务器实例
const server = express();

//将cors作为server的中间件
server.use(cors({
  origin: ['http://localhost:8081', 'http://127.0.0.1:8081']
}));

//将body-parser作为server的中间件
server.use(bodyParser.urlencoded({
  extended: false
}));

//用户登录接口
server.post('/login', (req, res) => {
  //获取用户名和密码
  let uname = req.body.uname;
  let upwd = req.body.upwd;
  //以用户名和密码为条件进行查找
  let sql = 'SELECT * FROM cake_perfect WHERE uname=? AND upwd=MD5(?)';
  pool.query(sql,[uname,upwd],(error,results)=> {
    if(error)throw error;
    if(results.length == 0){
      res.send({ message:'登录失败',code:0});
    } else {
      res.send({message:'登录成功',code:1});
    }
  });
});

//指定web服务器监听的端口
server.listen(5000);


