# !/usr/bin/env python3
# _*_ coding:utf-8 _*_
"""
@File     : models.py
@Project  : GroupBuy
@Time     : 2022/4/8 10:03 下午
@Author   : Liu hang
@Contact_1: 252326397@qq.com
@Contact_2: 
@Software : PyCharm
@License  : (C)Copyright 2021-2028, 
@Last Modify Time      @Version     @Desciption
--------------------       --------        -----------
2022/4/8 10:03 下午        1.0             None
"""

from . import db
from flask_login import UserMixin
from sqlalchemy.sql import func
import mysql.connector
from ..config import data_base_info
import json
import datetime


# class Mydb:
#
#     def __init__(self):
#         self.host = data_base_info['host']
#         self.user = data_base_info['user']
#         self.password = data_base_info['password']
#         self.database = data_base_info['database']
#         self.insert_table = data_base_info['insert_table']
#         self.data_max = 500
#         self.connector = None
#
#     def get_connector(self):
#         # print("------------get_connector--------------")
#         if self.connector is None:
#             # print("------------get_connector--------------")
#             self.connector = mysql.connector.connect(
#                 host=self.host,
#                 user=self.user,
#                 password=self.password,
#                 database=self.database
#             )
#         return self.connector

class Note(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    data = db.Column(db.String(10000))
    date = db.Column(db.DateTime(timezone=True), default=func.now())
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'))


class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(150), unique=True)
    password = db.Column(db.String(150))
    first_name = db.Column(db.String(150))
    notes = db.relationship('Note')
