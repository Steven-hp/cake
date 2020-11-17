//引入express模块
const express = require('express');

//创建web服务器
const server = express();

// 加载body-parser模块
const bodyParser = require('body-parser');

// 加载CORS模块
const cors = require('cors');

// 加载mysql模块
const mysql = require('mysql');

// 创建连接池
const pool = mysql.createPool({
    host:'127.0.0.1',// 数据库服务器的地址
    port:3306,// 数据库服务器的端口号
    user:'root',// 数据库用户的用户名
    password:'',// 数据库用户的密码
    database:'cake_perfect',// 数据库名称   
    charset:'utf8',// 编码方式
    connectionLimit:20// 最大连接数
});

// 将CORS作为Server的中间件
server.use(cors({
    origin:['http://localhost:8080','http://127.0.0.1:8080']
  }));

  // 将bodyParser作为server的中间件
server.use(bodyParser.urlencoded({extended:false}));

// 删除商品路由  post   /delete  删除
server.post('/delete',(req,res)=>{
    // console.log(111);
    let id=req.body.id;
	let sql="DELETE FROM tb_products WHERE id=?";
	pool.query(sql,[id],(err,results)=>{
		if(err)throw err;
         console.log(results);
        if(results.affectedRows>0){
            res.send({msg:'detale suc',code:1});
        }else{
            res.send({msg:'detale err',code:0});
        }
    });
});

// 指定WEB服务器监听的端口
server.listen(3000);
