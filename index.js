// 加载express模块
const express = require("express");
//加载cors模块
const cors = require("cors");
//加载MYsql模块
const mysql = require("mysql");
// 
const bodyparser=require("body-parser")
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
server.use(bodyparser.urlencoded({extended:false}))
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
// 查找
// server.get('/update',(req,res)=>{
//   let sql="SELECT uname,phone FROM tb_user";
//   pool.query(sql,(error,results)=>{
//     if(error) throw error;
//     res.send({ message: "获取成功", code: 1, results: results });
//     console.log(res);
//     console.log(results);
//   })
// })
// 修改用户个人资料
//修改用户
	 //3.1.获取get的请求
   server.post('/update',(req,res)=>{
        let obj=req.body;
        console.log(obj)
    //3.4 执行SQL命令
    //修改数据,将整个对象修改
      pool.query('UPDATE tb_user SET uname=?,phone=? WHERE id=1',[obj.uname,obj.phone],(err,results)=>{
      if(err) throw err;
      //返回的是对象,如果对象下的affectedRows为0说明修改失败,否则修改成功
      console.log(results);
      if(results.affectedRows===0){
        res.send({code: 0});
      }else{
        res.send({code: 1});
      }
      });
      });

//指定web服务器监听的端口
server.listen(3000);

