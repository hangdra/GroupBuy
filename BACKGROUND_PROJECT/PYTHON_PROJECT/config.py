# !/usr/bin/env python3
# _*_ coding:utf-8 _*_
"""
@File     : config.py
@Project  : GroupBuy
@Time     : 2022/4/9 7:43 下午
@Author   : Liu hang
@Contact_1: 252326397@qq.com
@Contact_2: 
@Software : PyCharm
@License  : (C)Copyright 2021-2028, 
@Last Modify Time      @Version     @Desciption
--------------------       --------        -----------
2022/4/9 7:43 下午        1.0             None
"""

import os

env_dist = os.environ
access_tokens = {"7j5Pv4byi9mVv3DU%lJ6y0#!x!": "production", "d#fBG4poBf9^Be5O$xlOd": "dev"}
version = env_dist.get("VERSION")
debug = env_dist.get("DEBUG")
log_level = env_dist.get("LOG_LEVEL")

data_base_info = {
    "host": env_dist.get("RISK_SERVICE_HOST"),
    "user": env_dist.get("RISK_USER"),
    "password": env_dist.get("RISK_PASSWORD"),
    "database": env_dist.get("RISK_DATABASE"),
    "insert_table": env_dist.get("TABLE_FOR_INSERT")
}
