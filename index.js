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
    // console.log(oid);
    // 根据id获取订单编号，订单状态，下单时间，发货时间，送达时间
    // 目前写成死的，改了删此条
    let sql="SELECT order_number,status,pay_time,deliver_time,received_time FROM tb_order_user";
    pool.query(sql,(error,results)=>{
        if(error) throw error;
        res.send({message:"获取成功",code:1,results:results})
        console.log(results)
    })
})

// 获取首页轮播图片
// 获取专区名称，专区插图
server.get("/",(req,res)=>{
    let sql="SELECT index_carousel_url,onSale_time,index_onSale_url,index_news FROM tb_index_product";
    pool.query(sql,(error,results)=>{
        if(error) throw error;
        res.send({message:"获取成功",code:1,results:results})
    })
})
//获取商品信息的接口
// 1F
server.get('/products1',(req,res)=>{
    // //存储分页显示的记录数量
    // let pagesize = 4;
    // //声明总页数变量
    // let pagecount;
    // // 根据page参数值并结合SELECT...LIMIT子句的标准计算公式来计算offset参数值
    // let offset = (page - 1) * pagesize;
    //SQL语句，查询自己所需要的信息数据如编号，名称，主题，如有需要自行添加
    let sql = "SELECT id,pro_name,pro_title,pro_price,pro_imgs_url,pro_desc,pro_label FROM tb_products WHERE pro_label='新品'  LIMIT 0,4";
    pool.query(sql,(error,results)=>{
        if(error) throw error;
        res.send({message:'查询成功',code:1,results:results})
    });
});
// 2F
server.get('/products2',(req,res)=>{
    // //存储分页显示的记录数量
    // let pagesize = 4;
    // //声明总页数变量
    // let pagecount;
    // // 根据page参数值并结合SELECT...LIMIT子句的标准计算公式来计算offset参数值
    // let offset = (page - 1) * pagesize;
    //SQL语句，查询自己所需要的信息数据如编号，名称，主题，如有需要自行添加
    let sql = "SELECT id,pro_name,pro_title,pro_price,pro_imgs_url,pro_desc,pro_label FROM tb_products WHERE pro_label='生日'  LIMIT 0,4";
    pool.query(sql,(error,results)=>{
        if(error) throw error;
        res.send({message:'查询成功',code:1,results:results})
    });
});
// 3F
server.get('/products3',(req,res)=>{
    // //存储分页显示的记录数量
    // let pagesize = 4;
    // //声明总页数变量
    // let pagecount;
    // // 根据page参数值并结合SELECT...LIMIT子句的标准计算公式来计算offset参数值
    // let offset = (page - 1) * pagesize;
    //SQL语句，查询自己所需要的信息数据如编号，名称，主题，如有需要自行添加
    let sql = "SELECT id,pro_name,pro_title,pro_price,pro_imgs_url,pro_desc,pro_label FROM tb_products WHERE pro_label='儿童'  LIMIT 0,4";
    pool.query(sql,(error,results)=>{
        if(error) throw error;
        res.send({message:'查询成功',code:1,results:results})
    });
});
// 4F
server.get('/products4',(req,res)=>{
    // //存储分页显示的记录数量
    // let pagesize = 4;
    // //声明总页数变量
    // let pagecount;
    // // 根据page参数值并结合SELECT...LIMIT子句的标准计算公式来计算offset参数值
    // let offset = (page - 1) * pagesize;
    //SQL语句，查询自己所需要的信息数据如编号，名称，主题，如有需要自行添加
    let sql = "SELECT id,pro_name,pro_title,pro_price,pro_imgs_url,pro_desc,pro_label FROM tb_products WHERE pro_label='聚会'  LIMIT 0,4";
    pool.query(sql,(error,results)=>{
        if(error) throw error;
        res.send({message:'查询成功',code:1,results:results})
    });
});
// 创建端口
server.listen(3000);