use `qyd-risk`;
drop table if exists `groupBuy`;
CREATE TABLE `groupBuy` (
  `id` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `community_name` varchar(15) DEFAULT NULL,
  `specific_scope` varchar(40) DEFAULT NULL,
  `` smallint(6) DEFAULT NULL,
  `pass_rate` float DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  KEY `idx_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


drop table if exists `initiator`;
CREATE TABLE `groupBuy` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `community_name` varchar(15) DEFAULT NULL,
  `specific_scope` varchar(40) DEFAULT NULL,
  `` smallint(6) DEFAULT NULL,
  `pass_rate` float DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  KEY `idx_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



发起团购 [✘]
选择城市 [✘]
选择区域 [✘]
输入小区名称 [✘]
具体团购适用范围 [✘]
添加团购发起者联系方式（微信或者电话，姓名等） [✘]
添加团购选项，描述清楚团购物品和价格 [✘]
选择截止日起 [✘]
选择是否需要发起者验证 [✘]
选择是否必须预先付款(未实现) [✘]
发布并生成团购码 [✘]