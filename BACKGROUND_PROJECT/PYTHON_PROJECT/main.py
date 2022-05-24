# !/usr/bin/env python3
# _*_ coding:utf-8 _*_
"""
@File     : main.py
@Project  : GroupBuy
@Time     : 2022/4/8 10:01 下午
@Author   : Liu hang
@Contact_1: 252326397@qq.com
@Contact_2: 
@Software : PyCharm
@License  : (C)Copyright 2021-2028, 
@Last Modify Time      @Version     @Desciption
--------------------       --------        -----------
2022/4/8 10:01 下午        1.0             None
"""
from website import create_app

app = create_app()

if __name__ == '__main__':
    app.run(debug=True)
