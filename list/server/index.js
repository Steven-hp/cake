//加载express模板
const express = require('express');

//加载cors模式
const cors = require ('cors')

//加载mysql模块
const mysql = require('mysql');
const bodyParser = require('body-parser');

//创建mysql连接池
const pool = mysql.createPool({
    //数据库服务器的地址
    host:'127.0.0.1',
    //数据库服务器的端口号
    port:3306,
    //数据库用户的用户名
    user:'root',
    //数据库用户的密码
    password:'',
    //数据库名称
    database:'cake_perfect',
    //编码方式
    charset:'utf8',
    //最大连接数
    connectionLimit:20
})

//创建web服务器
const server = express();

//将cors作为服务器的中间件
server.use(cors({
    origin:['http://localhost:8080','http://127.0.0.1:8080']
}));

//将bodyParser作为Server的中间件
server.use(bodyParser.urlencoded({extended:false}));


 //获取商品信息的接口
 server.get('/products',(req,res)=>{
    //SQL语句，查询自己所需要的信息数据如编号，名称，主题，如有需要自行添加
    let sql = 'SELECT pro_name,pro_price,pro_imgs_url FROM tb_products';
    pool.query(sql,(error,results)=>{
        if(error) throw error;
        res.send({message:'查询成功',code:1,results:results})
    });
});




//指定web服务器监听的端口
server.listen(3000)