// 加载Express模块
const express = require('express');
//加载CORS模块
const cors = require('cors');
//加载模块MySQL模块
const mysql = require('mysql');
//加载body-parser模块
const bodyParser = require('body-parser');
//加载MD5模块
const md5 = require('md5');

//创建MySQL连接池
const pool = mysql.createPool({
  // 数据库服务器的地址
  host: '127.0.0.1',
  // 数据库服务器的端口号
  port: 3306,
  // 数据库用户的用户名
  user: 'root',
  // 数据库用户的密码
  password: '',
  // 数据库名称
  database: 'cake_perfect',
  // 编码方式
  charset: 'utf8',
  // 最大连接数
  connectionLimit: 20
});

// 创建web服务器
const server = express();

//将CORS作为服务器的中间件
server.use(cors({
  origin: ['http://localhost:8080', 'http://127.0.0.1:8080']
}));

//将bodyParser作为Server中间件
server.use(bodyParser.urlencoded({ extended: false }));

//根据uid，修改用户信息
server.get("/me",(req,res)=>{
	var obj=req.body.id;
	var sql="UPDATE tb_user SET ? WHERE id=? ";
	pool.query(sql,[obj,obj.id],(err,result)=>{
		if(err) throw err;
		//console.log(result);
		if(result.length>0){
			res.send({message:'修改成功',code:1});
		}else{
			res.send({message:'修改失败',code:0});
		}
	});
});

//设置端口
server.listen(3000);