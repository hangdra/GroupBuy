--  root user
create database group_buy;
create user test identified by 'SjcSEHLJT*A';
GRANT ALL PRIVILEGES ON `group_buy`.* TO `test`@`%`;


--  test user
use `group_buy`;
drop table if exists `group_buy`;
CREATE TABLE `group_buy` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `initiator_id` int DEFAULT NULL COMMENT '团购发起者用户id',
  `city` int(11) DEFAULT NULL COMMENT '团购所属城市(默认发起者城市)',
  `region` int(11) DEFAULT NULL COMMENT '团购所属城市下的所属区(默认发起者城区)',
  `community_name` varchar(15) DEFAULT NULL COMMENT '社区名称(默认发起者小区名称)',
  `specific_scope` varchar(40) DEFAULT NULL COMMENT '具体适用范围',
  `contact_information` varchar(150) DEFAULT NULL COMMENT '团购组织者联系方式（可以填写微信或者手机号码，默认团购发起者联系方式）',
  `item_group_id` int(11) DEFAULT NULL COMMENT '团购清单id',
  `item_group_total_price` int(11) DEFAULT NULL COMMENT '团购总价',
  `dead_line` datetime DEFAULT NULL COMMENT '团购截止日期',
  `service_time` datetime DEFAULT NULL COMMENT '团购预计配送到达日期',
  `participant_verification` int(2) DEFAULT 1 COMMENT '参与者是否需要验证 1需要发起者验证 0 不需要',
  `group_buy_url` varchar(150 DEFAULT NULL COMMENT '参团连接',
  `participant_pre_pay` int(2) DEFAULT 0 COMMENT '参与者是否需要预先付款 1需要先钱 0 不需要',
  `group_buy_id` varchar(20) DEFAULT NULL COMMENT '团购id',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  KEY `initiator_idx` (`initiator_id`),
  KEY `group_buy_idx` (`group_buy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团购发起表';

drop table if exists `group_buy_user`;
CREATE TABLE `group_buy_user` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `group_buy_id` varchar(20) DEFAULT NULL COMMENT '团购id',
  `user_id` int not NULL COMMENT '用户id',
  `specific_location` varchar(40) DEFAULT NULL COMMENT '具体单元门牌号',
  `verification` int(2) DEFAULT 0 COMMENT '团购发起者是否确认有效 1 有效 0 未确认',
  `already_paid` int(2) DEFAULT 0 COMMENT '是否已经付清货款 1 付清 0 未付清',
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参与团购用户状态记录';


drop table if exists `group_item`;
CREATE TABLE `group_item` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(25) DEFAULT NULL COMMENT '购买物品名称',
  `quantity` varchar(10) DEFAULT NULL COMMENT  '购买物品数量',
  `price` int(11) DEFAULT NULL COMMENT '购买物品价格',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团购商品表';

drop table if exists `user`;
CREATE TABLE `user` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `phone_no` varchar(25) DEFAULT NULL COMMENT '用户手机号（注册使用）',
  `password` varchar(15) DEFAULT NULL COMMENT '用户密码（注册使用）',
  `city` int(11) DEFAULT NULL COMMENT '所属城市(默认sh)',
  `region` int(11) DEFAULT NULL COMMENT '所属城市下的所属区',
  `community_name` varchar(15) DEFAULT NULL COMMENT '小区名称',
  `specific_location` varchar(40) DEFAULT NULL COMMENT '具体单元门牌号',
  `contact_information` varchar(150) DEFAULT NULL COMMENT '联系方式（可以填写微信或者手机号码，默认手机号码）',
  `we_chat_id` varchar(150) DEFAULT NULL COMMENT '微信id',
  `name` varchar(25) DEFAULT NULL COMMENT '用户姓名（必填）',
  `location` int(11) DEFAULT NULL COMMENT '用户具体地址（必填）',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';


drop table if exists `announcement`;
CREATE TABLE `announcement` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `title` varchar(25) DEFAULT NULL COMMENT '标题',
  `message` varchar(25) DEFAULT NULL COMMENT '公告内容',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '发布日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告';

drop table if exists `province`;
CREATE TABLE `province` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `province_name` varchar(25) DEFAULT NULL COMMENT '省名称',
  `service` int(2) DEFAULT 0 COMMENT '是否提供服务 1 是 0 否'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='城市';

drop table if exists `city`;
CREATE TABLE `city` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `province_id` int DEFAULT NULL COMMENT '省id',
  `city_name` varchar(25) DEFAULT NULL COMMENT '城市名称',
  `service` int(2) DEFAULT 0 COMMENT '是否提供服务 1 是 0 否'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='城市';

drop table if exists `region`;
CREATE TABLE `region` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `city_id` int DEFAULT NULL COMMENT '城市id',
  `region_name` varchar(25) DEFAULT NULL COMMENT '区名称',
  `service` int(2) DEFAULT 0 COMMENT '是否提供服务 1 是 0 否'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区';




use `group_buy`;
delete from city where id>1;
insert into province (province_name,service) values("上海市",1);

insert into city (province_id,city_name,service) values(1,"上海市",1);

insert into region (city_id,region_name,service) values(1,"黄浦区",1);

insert into region (city_id,region_name,service) values(1,"黄浦区",1);
insert into region (city_id,region_name,service) values(1,"徐汇区",1);
insert into region (city_id,region_name,service) values(1,"长宁区",1);
insert into region (city_id,region_name,service) values(1,"静安区",1);
insert into region (city_id,region_name,service) values(1,"普陀区",1);
insert into region (city_id,region_name,service) values(1,"虹口区",1);
insert into region (city_id,region_name,service) values(1,"杨浦区",1);
insert into region (city_id,region_name,service) values(1,"闵行区",1);
insert into region (city_id,region_name,service) values(1,"宝山区",1);
insert into region (city_id,region_name,service) values(1,"嘉定区",1);
insert into region (city_id,region_name,service) values(1,"浦东新区",1);
insert into region (city_id,region_name,service) values(1,"金山区",1);
insert into region (city_id,region_name,service) values(1,"松江区",1);
insert into region (city_id,region_name,service) values(1,"青浦区",1);
insert into region (city_id,region_name,service) values(1,"奉贤区",1);
insert into region (city_id,region_name,service) values(1,"崇明区",1);



