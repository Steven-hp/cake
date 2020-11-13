#设置客户端连接服务器端的编码为UTF-8
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS users;
#创建新的数据库,设置存储编码为UTF-8
CREATE DATABASE users CHARSET=UTF8;
#进入该数据库
USE users;
#创建保存数据的表
CREATE TABLE user_name(
uid INT PRIMARY KEY AUTO_INCREMENT,#主键约束编号、自增
uname VARCHAR(20) NOT NULL COMMENT,#用户名、非空
password VARCHAR(30) NOT NULL COMMENT,#密码、非空
phone CHAR(11),#手机号
nick_name VARCHAR(20),#昵称
avatar VARCHAR(50),#头像
birthday DATA,#生日

lname VARCHAR(32),#商品名称
price DECIMAL(8.2),#价格
size VARCHAR(10),#规格/颜色
category VARCHAR(32),#所属分类
details VARCHAR(5024),#产品详细说明

shelf_time BIGINT,#上架时间
sold_count INT,#已售出的数量
is_onsale BOOLEAN #是否促销中

);
#插入数据
INSERT INTO user VALUES(NULL,);


