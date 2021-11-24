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
        logger.info("#"*20)
        self.session = SESSION
        self.body = request_bodys
    
        #获取token
        with open('./cases/test_kzhd01_login.json','r',encoding='utf8')as fp:
            json_data = json.load(fp)
            url=json_data['test_login']['url']
            partner_data=json_data['test_login']['partner_json']
            driver_data=json_data['test_login']['driver_json']
            customer_data=json_data['test_login']['customer_json']
            affdriver_data=json_data['test_login']['affdriver_json']
        #获取物流商token
        response=requests.post(url=url,json=partner_data)
        self.patner_token="JWT " + response.json()['data']["token"]

        #获取自有司机token
        response=requests.post(url=url,json=driver_data)
        logger.info("data{}+response{}".format(driver_data,response.text))
        self.driver_token="JWT " + response.json()['data']["token"]
      
       #获取挂靠司机token
        response=requests.post(url=url,json=affdriver_data)
        self.affdriver_token="JWT " + response.json()['data']["token"]
      
        #获取货主token
        response=requests.post(url=url,json=customer_data)
        self.customer_token="JWT " + response.json()['data']["token"]
        # logger.info("JWT " + response.json()["token"])

     #构造请求
    def make_request_template(self) -> dict:
        """
            make request body headers cookies and methods
        :return:
        """
       
        # logger.info("接受到 Func: {}, 参数为: {}".format(
        #     self.body.get('methods_name'), json.dumps(self.body, indent=4, ensure_ascii=False))
        # )

        method = self.body.get('method')
        if method in ['get', 'GET']:
           
            tmp = ("url", "params", "headers", "cookies")
            body = self.list_for_key_to_dict(*tmp, my_dict=self.body)
            #判断角色增加请求头
            if body.get('role')=='driver':
                body['headers']={"Authorization":self.driver_token}
  
            else:
                body['headers']={"Authorization":self.patner_token}
            if body.get('params'):
                if "&" in body.get('params') and "=" in body.get('params'):
                    body["params"] = dict(parse.parse_qsl(body["params"]))
            logger.info("GET 请求: {}".format(self.list_for_key_to_dict(*tmp, my_dict=self.body)))
            return self.get(**body)

        if method in ['post', 'POST']:
          
            tmp = ("url", "data", "json", "files","headers", "cookies")
            body = self.list_for_key_to_dict(*tmp, my_dict=self.body)
            if 'files' in self.body.keys():
                body['files']={'truck_license_image': ('receipt.png', open('/Users/test/work/API_AutomationTest/imgs/receipt.png', 'rb'))}
            #请求头增加token
            body['headers']={"Authorization":self.patner_token}
            body = {key: value for key, value in body.items() if value is not None}
            logger.info("POST 请求：{}".format(body))
            

            return self.post(**body)

        if method in ['patch', 'PATCH']:
            tmp = ("url", "data", "json","files","headers", "cookies")
            body = self.list_for_key_to_dict(*tmp, my_dict=self.body)
            body = {key: value for key, value in body.items() if value is not None}

            #判断是否为图片文件上传
            if 'files' in self.body.keys():
                body['files']={'receipt_image': ('receipt.png', open('/Users/test/work/API_AutomationTest/imgs/receipt.png', 'rb'))}
           #判断请求使用的角色
            if self.body.get('role')=='driver':
                body['headers']={"Authorization":self.driver_token}

            if self.body.get('role')=='affdriver':  
                body['headers']={"Authorization":self.affdriver_token}

            if self.body.get('role')=='partnerstaff':
                body['headers']={"Authorization":self.patner_token}

            if self.body.get('role')=='customerstaff':
                body['headers']={"Authorization":self.customer_token}
            else:
                body['headers']={"Authorization":self.patner_token}

            logger.info("PATCH 请求：{}".format(body))

            return self.patch(**body)

        if method in ['delete','DELETE']:
            tmp = ("url", "data", "json", "headers", "cookies")
            body = self.list_for_key_to_dict(*tmp, my_dict=self.body)
            body['headers']={"Authorization":self.patner_token}
            body = {key: value for key, value in body.items() if value is not None}
            logger.info("DELETE 请求：{}".format(body))
           
            return self.delete(**body)


        else:
            raise AttributeError("错误的请求方法, 请检查配置文件中的请求方法, 目前只支持['GET', 'POST','PATCH','DELETE']")

    def post(self, **kwargs: dict) -> dict:
    
        return self.session.post(**kwargs)

    def get(self, **kwargs: dict) -> dict:
    # return self.session.get(**kwargs).json()   
        return self.session.get(**kwargs)

    def patch(self, **kwargs: dict) -> dict:
        return self.session.patch(**kwargs) 

    def delete(self, **kwargs: dict) -> dict:
      
        return self.session.delete(**kwargs)  
