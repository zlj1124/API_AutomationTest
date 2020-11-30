'''
Descripttion: 
Author: zlj
Date: 2020-11-23 13:53:27
'''
"""
@Version: 1.0
@Project: doraemon_recode
@Author: Raymond
@Data: 2018/1/30 下午12:03
@File: HttpHandler.py
@License: MIT
"""
import json
import requests
from requests import Session
from .LogHandler import LogHandler
from .Recursion import GetDictParam
from urllib import parse


logger = LogHandler(__name__)
SESSION = Session()


class HttpHandler(GetDictParam):
    """
            公用的请求类接口
    @param : 需要请求的接口地址
    @param : kwargs
        @member methods -> http methods
        @member data -> post data
        @member json -> post json
        @member headers -> headers
        @member cookies -> cookies
    @return: Response<status_code>
    """
    def __init__(self, request_bodys: dict):
      
        self.session = SESSION
        self.body = request_bodys
        #获取token
        with open('./cases/test_kzhd_login.json','r',encoding='utf8')as fp:
            json_data = json.load(fp)
            url=json_data['test_login']['url']
            username=json_data['test_login']['json']['username']
            password=json_data['test_login']['json']['password']
     
        response=requests.post(url=url,json= {"username": username, "password": password})
        self.token="JWT " + response.json()['data']["token"]
        # logger.info("JWT " + response.json()["token"])


    def make_request_template(self) -> dict:
        """
            make request body headers cookies and methods
        :return:
        """
        # logger.info(self.body)
        # logger.info("接受到 Func: {}, 参数为: {}".format(
        #     self.body.get('methods_name'), json.dumps(self.body, indent=4, ensure_ascii=False))
        # )
    

        method = self.body.get('method')
        if method in ['get', 'GET']:
           
            tmp = ("url", "params", "headers", "cookies")
            body = self.list_for_key_to_dict(*tmp, my_dict=self.body)
            body['headers']={"Authorization":self.token}
            if body.get('params'):
                if "&" in body.get('params') and "=" in body.get('params'):
                    body["params"] = dict(parse.parse_qsl(body["params"]))
            logger.info("GET *TMP: {}".format(self.list_for_key_to_dict(*tmp, my_dict=self.body)))
            return self.get(**body)

        if method in ['post', 'POST']:
          
            tmp = ("url", "data", "json", "headers", "cookies")
            body = self.list_for_key_to_dict(*tmp, my_dict=self.body)
            body['headers']={"Authorization":self.token}
            logger.info(body)
            body = {key: value for key, value in body.items() if value is not None}
            return self.post(**body)

        if method in ['patch', 'PATCH']:
            tmp = ("url", "data", "json", "headers", "cookies")
            body = self.list_for_key_to_dict(*tmp, my_dict=self.body)
            body['headers']={"Authorization":self.token}
            logger.info(body)
            body = {key: value for key, value in body.items() if value is not None}
            logger.info(body)
            return self.patch(**body)

        if method in ['delete','DELETE']:
            tmp = ("url", "data", "json", "headers", "cookies")
            body = self.list_for_key_to_dict(*tmp, my_dict=self.body)
            body['headers']={"Authorization":self.token}
            logger.info(body)
            body = {key: value for key, value in body.items() if value is not None}
            logger.info(body)
            return self.delete(**body)



        else:
            raise AttributeError("错误的请求方法, 请检查配置文件中的请求方法, 目前只支持['GET', 'POST']")

    def post(self, **kwargs: dict) -> dict:
        return self.session.post(**kwargs)

    def get(self, **kwargs: dict) -> dict:
    # return self.session.get(**kwargs).json()   
        return self.session.get(**kwargs)

    def patch(self, **kwargs: dict) -> dict:
        return self.session.patch(**kwargs) 

    def delete(self, **kwargs: dict) -> dict:
      
        return self.session.delete(**kwargs)  
