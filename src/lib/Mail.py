'''
@Descripttion: 
@Author: zlj
@Date: 2020-04-13 14:40:09
'''
# -*- coding: utf-8 -*-


"""
封装发送邮件的方法

"""
import smtplib
import time
import os
from email.header import Header
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from src.config import config

class SendMail:

  

    def sendMail(self):
        test_dir = os.path.join(os.getcwd(), "src/report/")
        rep_dir= os.path.join(test_dir,'测试报告.html')
    
        with open(rep_dir, "rb") as f:
            mail_content = f.read()
           
        annex = MIMEMultipart()
        # 添加正文
        msg_body = MIMEText("接口测试报告详见附件："+'\n', "html", "utf-8")

       
        # 添加附件
        msg_html = MIMEText(mail_content, "html", "utf-8")
        msg_html["Content-Type"] = "application/octet-stream"
        msg_html["Content-Disposition"] = "attachment; filename=Report.html"
        annex.attach(msg_body)
        annex.attach(msg_html)
        annex["Subject"] = Header('接口测试报告', "utf-8")
        annex['From'] = config.SENDER
        annex['To'] = config.RECEIVER 

       

        try:
            smtp = smtplib.SMTP()
            smtp.connect(config.STMP_SERVER)
            smtp.login(config.SENDER , config.PASSWORD)
            smtp.sendmail(config.SENDER,config.RECEIVER , annex.as_string())
        except Exception as e:
            print(e)
            print("发送失败")
            # self.log.error("邮件发送失败，请检查邮件配置")

        else:
            print("发送成功")
            # self.log.info("邮件发送成功")
        finally:
            smtp.quit()
            
# if __name__ == "__main__":
#     send=SendMail()
#     send.sendMail()