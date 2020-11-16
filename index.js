// 加载express模块
const express = require("express");
//加载cors模块
const cors = require("cors");
//加载MYsql模块
const mysql = require("mysql");
//创建连接池
const pool = mysql.createPool({
  host: '127.0.0.1',
  port: 3306,
  user: 'root',
  password: '',
  database: 'cake_perfect',
  charset: 'utf8',
  connectionLimit: 20
})
//创建web服务器实例
const server = express();
//将cors作为server的中间件
server.use(cors({
  origin: ['http://localhost:8080', 'http://127.0.0.1:8080']
}))

// 获取用户物流信息
server.get('/adress', (req, res) => {
  //sql语句,根据物流信息表编号 获取用户的物流信息
  let sql = "SELECT receiver,is_default,cellphone,o_id FROM tb_adress_user WHERE id=?";
  pool.query(sql, [1] , (error, results) => {
    if (error) throw error;
    res.send({ message: "获取成功", code: 1, results: results });
    console.log(res);
  })
})


//指定web服务器监听的端口
server.listen(3000);