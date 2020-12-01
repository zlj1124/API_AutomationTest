'''
Descripttion: 
Author: zlj
Date: 2020-11-27 16:23:27
'''

import json
import os
from ..lib.LogHandler import LogHandler
from ..lib import GetDictParam, CasesManager, CasesContainer


__all__ = [
    "CasesContainer",
    "CasesManager",
    "CASE_PATH",
    "TESTCASES_PATH",
    "REPORT_PATH",
    "HEADERS_TEMPLATE_PATH",
    "CONTENT_TEMPLATE_PATH"
]
# PATH


CASE_PATH = 'cases/'
TESTCASES_PATH = 'src/testcases/'
REPORT_PATH = 'src/report/'
HEADERS_TEMPLATE_PATH = 'src/template/header.txt'
CONTENT_TEMPLATE_PATH = 'src/template/content.txt'
REPOR_TEMPLATE_PATH = 'src/template/template.html'
DEBUG_INFO = 1

# mail
STMP_SERVER = 'smtp.qq.com'
SENDER = '2205663173@qq.com'
RECEIVER = 'zuolj@burnish.cn'
NUERNAME = '2205663173@qq.com'
PASSWORD = 'gicaukulxsvhdiga'


#DB
HOST="192.168.3.81"
USER="root"
PASS="root"
DB_NAME="dev_df_kzhd"


# Messages

# load testcases


class TestCaseLoader(GetDictParam, CasesManager):
    """ TestCase Loader"""
    __slots__ = "tags"

    if DEBUG_INFO is 1:
        logger = LogHandler(__name__)
    else:
        logger = LogHandler(__name__, level=30)

    def __init__(self):
        """ init class"""
        super(TestCaseLoader, self).__init__()
        self.files = os.listdir(CASE_PATH)
        self.data = {}
        self.tags = self.make_cases_info()

    def __repr__(self) -> str:
        """
            return repr obj
        :return:
        """
        return json.dumps(self.tags)
