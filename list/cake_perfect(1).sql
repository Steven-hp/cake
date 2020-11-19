-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2020-11-14 05:22:13
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake_perfect`

DROP DATABASE  IF EXISTS `cake_perfect`;

CREATE DATABASE IF  NOT EXISTS  `cake_perfect` DEFAULT  CHARACTER SET 'utf8';

USE `cake_perfect`;

-- --------------------------------------------------------

--
-- 表的结构 `tb_adress_user`
--

CREATE TABLE `tb_adress_user` (
  `id` int(11) NOT NULL COMMENT '#物流信息表编号',
  `receiver` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#收件人姓名',
  `address` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#收件地址',
  `cellphone` char(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#收件人手机号',
  `is_default` tinyint(1) NOT NULL DEFAULT '1' COMMENT '#是否为当前用户的默认收货地址',
  `o_id` int(11) NOT NULL COMMENT '关联订单表的id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='#物流信息表';

-- --------------------------------------------------------

--
-- 表的结构 `tb_index_product`
--

CREATE TABLE `tb_index_product` (
  `id` int(11) NOT NULL COMMENT '#首页专区编号',
  `onSale time` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#专区名称（新品/生日/儿童/聚会/活动..）',
  `index_carousel_url` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#首页轮播图路径',
  `index_onSale_url` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#专区插图路径',
  `index_news` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#首页刊物/文章',
  `p_id` int(11) NOT NULL COMMENT '#关联商品信息id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='#首页栏目详情表';

-- --------------------------------------------------------

--
-- 表的结构 `tb_order_user`
--

CREATE TABLE `tb_order_user` (
  `id` int(11) NOT NULL COMMENT '#用户订单编号',
  `order_number` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#订单编码',
  `status` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#订单状态/已付款/未付款/配送中/等待付款..',
  `pay_time` datetime NOT NULL COMMENT '#记录下单/付款时间',
  `deliver_time` datetime NOT NULL COMMENT '#发货时间',
  `received_time` datetime NOT NULL COMMENT '#送达时间',
  `u_id` int(11) NOT NULL COMMENT '#关联用户的id',
  `p_id` int(11) NOT NULL COMMENT '#关联商品的id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='#用户订单表';

-- --------------------------------------------------------

--
-- 表的结构 `tb_products`
--

CREATE TABLE `tb_products` (
  `id` int(11) NOT NULL COMMENT '#商品编号',
  `pro_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#商品名称',
  `pro_imgs_url` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#商品图片路径',
  `pro_title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#主标题',
  `pro_desc` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#产品描述',
  `pro_price` decimal(7,2) NOT NULL COMMENT '#商品价格',
  `pro_size` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#蛋糕尺寸，如14*14',
  `head_count` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#适合最佳人数范围（规格）如2-4人',
  `pro_tableware` int(11) NOT NULL COMMENT '#所含餐具',
  `deliveryTime` datetime NOT NULL COMMENT '#最早配送时间',
  `pro_exchange` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '#所增/换购商品',
  `pro_details` blob NOT NULL COMMENT '#商品图文详情',
  `pro_categories` varchar(16) COLLATE utf8mb4_unicode_ci  COMMENT '#记录口味种类（8种）',
  `pro_label` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#标签描述，新品/人气/明星',
  `pro_tid` int(11) NOT NULL COMMENT '#关联商品类型的id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='#商品信息表';

#插入数据
INSERT INTO tb_products VALUES(1,'雪域燕麦芝士·轻享','d-1.jpg','这是主题','这是描述',298,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','慕斯','新品',1);
INSERT INTO tb_products VALUES(2,'巴斯克流心','d-2.jpg','这是主题','这是描述',218,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','巧克力','新品',1);
INSERT INTO tb_products VALUES(3,'雪域牛乳芝士','d-3.jpeg','这是主题','这是描述',218,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','慕斯','新品',1);
INSERT INTO tb_products VALUES(4,'壁咚！阿华田','d-4.jpg','这是主题','这是描述',258,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','布丁','新品',1);
INSERT INTO tb_products VALUES(5,'数字蛋糕（数字6）','d-5.jpg','这是主题','这是描述',298,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','水果','新品',1);
INSERT INTO tb_products VALUES(6,'雪域莓莓燕麦芝士·轻享','d-6.jpg','这是主题','这是描述',298,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','芝士','新品',1);
INSERT INTO tb_products VALUES(7,'环游世界','d-7.jpg','这是主题','这是描述',298,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','慕斯','新品',1);
INSERT INTO tb_products VALUES(8,'杨枝甘露','d-8.jpg','这是主题','这是描述',218,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','慕斯','新品',1);
INSERT INTO tb_products VALUES(9,'小莓好','d-9.jpg','这是主题','这是描述',298,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','慕斯','新品',1);
INSERT INTO tb_products VALUES(10,'王子','d-10.jpg','这是主题','这是描述',218,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','巧克力','新品',1);

INSERT INTO tb_products VALUES(11,'Home Style Bread 家常面包套餐','m-1.png','这是主题','这是描述',41,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','','新品',2);
INSERT INTO tb_products VALUES(12,'Brown Sugar红糖红枣桂圆软欧','m-2.jpg','这是主题','这是描述',50,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','','人气',2);
INSERT INTO tb_products VALUES(13,'Croissant 原味可颂','m-3.jpeg','这是主题','这是描述',12,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','','人气',2);


INSERT INTO tb_products VALUES(14,'哈根达斯','b-2.jpg','这是主题','这是描述',98,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','','人气',3);
INSERT INTO tb_products VALUES(15,'和路雪 梦龙','b-2.jpg','这是主题','这是描述',50,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','','新品',3);
INSERT INTO tb_products VALUES(16,'原味匠心吐司','x-2.jpg','这是主题','这是描述',50,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','','人气',4);
INSERT INTO tb_products VALUES(17,'巧克力吐司','x-2.jpg','这是主题','这是描述',50,'14*14','2-4',1,'2020-11-17','这是换购','这是图文详情','','人气',4);


-- --------------------------------------------------------

--
-- 表的结构 `tb_products_type`
--

CREATE TABLE `tb_products_type` (
  `id` int(11) NOT NULL COMMENT '#记录商品类型编号',
  `type_name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '#类型名称（蛋糕/面包/冰淇淋/下午茶/其他）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='#商品类型表';

INSERT INTO tb_products_type VALUES(1,'蛋糕');
INSERT INTO tb_products_type VALUES(2,'面包');
INSERT INTO tb_products_type VALUES(3,'冰激凌');
INSERT INTO tb_products_type VALUES(4,'下午茶');
-- --------------------------------------------------------

--
-- 表的结构 `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL COMMENT '#用户编号',
  `uname` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT '#用户名',
  `upwd` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '#密码',
  `phone` char(11) COLLATE utf8_unicode_ci NOT NULL COMMENT '#联系方式',
  `birthday` date DEFAULT NULL COMMENT '#记录用户生日 ，默认为空',
  `avator` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '#用户头像',
  `user_tid` int(11) NOT NULL COMMENT '关联用户类型表id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='#用户信息表';

-- --------------------------------------------------------

--
-- 表的结构 `tb_user_type`
--

CREATE TABLE `tb_user_type` (
  `id` int(11) NOT NULL COMMENT '#记录用户类型编号',
  `isVip` tinyint(1) NOT NULL DEFAULT '0' COMMENT '#是否为vip用户，默认为false',
  `account_balance` decimal(7,2) NOT NULL COMMENT '#记录用户账户余额',
  `join_vip_time` date NOT NULL COMMENT '#记录加入会员日期',
  `vip_points` int(11) NOT NULL DEFAULT '0' COMMENT '#会员积分,默认为0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='#用户类型表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_adress_user`
--
ALTER TABLE `tb_adress_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_index_product`
--
ALTER TABLE `tb_index_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_order_user`
--
ALTER TABLE `tb_order_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_products`
--
ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_products_type`
--
ALTER TABLE `tb_products_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user_type`
--
ALTER TABLE `tb_user_type`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tb_adress_user`
--
ALTER TABLE `tb_adress_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '#物流信息表编号';
--
-- 使用表AUTO_INCREMENT `tb_index_product`
--
ALTER TABLE `tb_index_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '#首页专区编号';
--
-- 使用表AUTO_INCREMENT `tb_order_user`
--
ALTER TABLE `tb_order_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '#用户订单编号';
--
-- 使用表AUTO_INCREMENT `tb_products`
--
ALTER TABLE `tb_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '#商品编号';
--
-- 使用表AUTO_INCREMENT `tb_products_type`
--
ALTER TABLE `tb_products_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '#记录商品类型编号';
--
-- 使用表AUTO_INCREMENT `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '#用户编号';
--
-- 使用表AUTO_INCREMENT `tb_user_type`
--
ALTER TABLE `tb_user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '#记录用户类型编号';
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
