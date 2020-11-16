// 加载Express模块
const express=require('express');
// 加载CORS模块
const cors=require("cors");
// 加载body-parser模块
const bodyParser=require("body-parser");
// 加载MYSQL模块
const mysql=require("mysql");
// 创建MYSQL连接池
const pool=mysql.createPool({
    // 数据库服务器地址
    host:"127.0.0.1",
    // 数据库服务端口号
    port:3306,
    // 数据库用户名
    user:"root",
    // 数据库密码
    password:"",
    // 数据库名称
    database:"cake_perfect",
    // 编码方式
    charset:"utf8",
    // 最大连接池
    connectionLimit:20
});
// 创建WEB服务器实例
const server=express();

// 将cors作为Server的中间件
server.use(cors({
    origin:["http://localhost:8081","http://127.0.0.1:8081"]
}));

//将body-parser作为Server的中间件 
server.use(bodyParser.urlencoded({extended:false}));

// 获取用户订单信息
server.get("/order",(req,res)=>{
    // let oid=req.query.id;
    // 根据id获取订单编号，订单状态，下单时间，发货时间，送达时间
    // 目前写成死的，改了删此条
    let sql="SELECT order_number,status,pay_time,deliver_time,received_time FROM tb_order_user WHERE id=?";
    pool.query(sql,[1],(error,results)=>{
        if(error) throw error;
        res.send({message:"获取成功",code:1,results:results})
    })
})
// 创建端口
server.listen(3000);