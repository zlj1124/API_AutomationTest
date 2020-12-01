'''
Descripttion: 
Author: zlj
Date: 2020-11-25 17:20:42
'''
import os
from src.config import config


class BackMysql(object):	
    def __init__(self):	    
        # self.host = "192.168.3.81"	      
        # self.user = "root"	           
        # self.password = "root"	          
        # self.db = "dev_df_kzhd"	

        self.host=config.HOST
        self.user=config.USER
        self.password=config.PASS
        self.db=config.DB_NAME          
        self.db_path = os.path.abspath("../API_AutomationTest/db/backup_res/")
    
    



    def backup_data(self):   
        try:	        
            mysql_dump = "mysqldump -u" + self.user + \
                     " -p" + self.password + " -h" + \
                     self.host + " " + self.db + \
                     " --single-transaction" + ">" + self.db_path + "/" +self.db + ".sql"+' --column-statistics=0'	                
            print(mysql_dump)
            out_dump = os.system(mysql_dump)	               
            print ("数据库备份成功……")	        
        except Exception as e:	           
            print ("数据库备份失败：", e	)


    def restores_data(self):	
        try:	       
            mysql_res = "mysql -u" + self.user + " -p" + \
                self.password + " -h" + self.host + \
                " " + self.db + "<" + self.db_path + "/" + self.db + ".sql"
            out_res = os.system(mysql_res)
            print ("数据库还原成功……")	      
        except Exception as e:	           
            print( "数据库还原失败：", e	)

    def main(self):	
        self.backup_data()	
        # self.restores_data()	




if __name__ == "__main__":	
    dump = BackMysql()	 
    dump.main() 