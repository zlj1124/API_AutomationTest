"""
@Version: 1.0
@Project: doraemon_recode
@Author: Raymond
@Data: 2018/1/30 下午1:20
@File: Wraps.py
@License: MIT
"""
import json
from functools import wraps
from .LogHandler import LogHandler
from .HttpHandler import HttpHandler
from .CreateCases import CreateCase
from .Recursion import GetDictParam
import builtins

logger = LogHandler(__name__)


def test_case_runner(func):
    """ test case runner """
    @wraps(func)
    def wrap(*args: tuple):
        for item in iter(CreateCase()):
            for key, value in item.items():
                if value == func.__name__:
                    # logger.info("{} ===> {}".format(item.get('body'), value))
                    client = HttpHandler(item.get('body'))
                    response = client.make_request_template()
                    result=response.json()
                    result["code"]=response.status_code     #把状态码加到response
                    logger.info("Result: {}".format(result))
               
                    return func(
                        *args,
                        response=result,
                        kwassert=item.get('body').get('assert')
                     
                    )
    return wrap


def test_case_parse(func):
    """ test case reponse parse """
    @wraps(func)
    def wrap(*args: tuple, **kwargs: dict):
        """ parse wrap """

        response = kwargs.get('response') #response 返回值
        # res_code = kwargs.get('code_assert')
        kwassert = kwargs.get('kwassert') #json中的assert
        tmp = tuple(kwassert.keys())
        # logger.info(res_code)
        result = GetDictParam.list_for_key_to_dict(*tmp, my_dict=response)
        for key, value in kwassert.items():
            if isinstance(value, list):
                tp, _value = value
                if tp == "type" and key == "ResponseType":
                    result[key] = [tp, repr(getattr(builtins, tp)(response)).split("'")[1]]

                elif tp == "type":
                    result[key] = [tp, repr(getattr(builtins, tp)(result.get(key))).split("'")[1]]

                else:
                    result[key] = [tp, getattr(builtins, tp)(result.get(key))]
                  
        assert_resp_values = json.dumps(
        #assert_resp_values：response里面的值

            result,
            ensure_ascii=False,
            sort_keys=True,
        )    
        #kwassert_values：模板assert的值
        kwassert_values = json.dumps(
            kwassert, ensure_ascii=False, sort_keys=True
        )
        exec_info = "self.assertEqual({}, {})".format(assert_resp_values, kwassert_values)
        return func(*args, response=result, exec_text=exec_info)
    return wrap
