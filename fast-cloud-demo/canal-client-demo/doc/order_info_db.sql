CREATE TABLE `order_info` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;