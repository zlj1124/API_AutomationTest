'''
Descripttion: 
Author: zlj
Date: 2020-11-27 16:23:27
'''
# -*- coding: utf-8 -*-
"""
@File: run
@Author: Ray
@: 2018-01-29 15:14:46
@Version: 1.0
"""
import os
import unittest
import click
from src.lib.BeautifulReport import BeautifulReport
from src.lib import CreateCases
from src.lib import Mail
from db.db_dump import BackMysql

@click.command()
@click.option('--cases', default='src/testcases/', help="case file path")
@click.option('--pattern', default='*.py', help="get cases file pattern")
@click.option(
        '--report',
        default='src/report/',
        help="generator report in path")
def run(cases, pattern, report):
    test_suite = unittest.defaultTestLoader.discover(cases, pattern=pattern)
    result = BeautifulReport(test_suite)
    result.report(filename='测试报告', description='企业国六测试报告', log_path=report)
    # 每次执行测试后 回收掉所有自动生成的测试文件
    disfiles = os.listdir(cases)
    for file in disfiles:
        if os.path.isfile(cases + file):
            os.remove(cases + file)
  
#     恢复数据库
    bt=BackMysql()
    bt.restores_data()

#     # 发送邮件
#     send=Mail.SendMail()
#     send.sendMail()




if __name__ == '__main__':
    run()
