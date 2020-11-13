#设置客户端连接服务器端的编码为UTF-8
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS pro;
#创建新的数据库,设置存储编码为UTF-8
CREATE DATABASE pro CHARSET=UTF8;
#进入该数据库
USE pro;

#创建保存数据的表
CREATE TABLE pro(
id INT PRIMARY KEY AUTO_INCREMENT,  #商品编号：主键约束、编号自增
pro_name VARCHAR(16) NOT NULL,  #商品名称：非空
pro_imgs_url VARCHAR(64) NOT NULL,  #商品图片路径：非空
pro_title VARCHAR(32) NOT NULL,  #主标题：非空
pro_desc VARCHAR(128) NOT NULL,  #产品描述：非空
pro_price DECIMAL(7,2) NOT NULL,  #商品价格
pro_size VARCHAR(8),  #蛋糕尺寸
number VARCHAR(8),  #适合人群
pro_tableware INT,  #餐具数量
deliveryTime DATETIME,  #最早配送时间
pro_exchange VARCHAR(16),  #换购商品
pro_details BLOB,  #商品图文详情
t_id INT   #相对应的商品类型编号
);
#插入数据
INSERT INTO pro VALUES(NULL,);


