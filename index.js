// 加载Express模块
const express = require('express');
//加载cors
const cors = require('cors');
//加载mysql模块
const mysql = require('mysql');

//创建mysql连接池
const pool = mysql.createPool({
  // 数据库服务器的地址
  host:'127.0.0.1',
  // 数据库服务器的端口号
  port:3306,
  // 数据库用户的用户名
  user:'root',
  // 数据库用户的密码
  password:'',
  // 数据库名称
  database:'cake_perfect',
  // 编码方式
  charset:'utf8',
  // 最大连接数
  connectionLimit:20
});

// 创建WEB服务器实例
const server = express();



//将cors作为Server的中间件
server.use(cors({
  origin:['http://127.0.0.1:8080','http://localhost:8080']
}));

//获取所有商品的类型分类
server.get( '/type',(req,res)=>{
  //获取所有分类
  let sql = 'SELECT id,type_name FROM tb_products_type';
  //通过连接池的query()方法来执行sql语句
  pool.query(sql,(error,results)=>{
    if(error) throw error;
    res.send({message:'查询成功',code:1,results:results})
  });
});


// 指定WEB服务器监听的端口
server.listen(3000);

