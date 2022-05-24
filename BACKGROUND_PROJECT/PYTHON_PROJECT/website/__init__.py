# !/usr/bin/env python3
# _*_ coding:utf-8 _*_
"""
@File     : __init__.py
@Project  : GroupBuy
@Time     : 2022/4/8 10:02 下午
@Author   : Liu hang
@Contact_1: 252326397@qq.com
@Contact_2: 
@Software : PyCharm
@License  : (C)Copyright 2021-2028, 
@Last Modify Time      @Version     @Desciption
--------------------       --------        -----------
2022/4/8 10:02 下午        1.0             None
"""
from flask import Flask


def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = 'uW9BKo-BPsrnp-dR8p'

    from .views import views
    from .auth import auth

    app.register_blueprint(views, url_prefix='/')
    app.register_blueprint(auth, url_prefix='/')
    return app
