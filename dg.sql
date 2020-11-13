SET NAMES UTF8;
DROP DATABASE IF EXISTS dg;
CREATE DATABASE dg CHARSET=UTF8;
USE dg;

/**收货地址信息**/
CREATE TABLE ipartment_user(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  receiver VARCHAR(16),       #接收人姓名
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  is_default BOOLEAN,         #是否为当前用户的默认收货地址
  user_id INT                 ##需关联用户编号
);

