#!/usr/bin/env python
# -*- coding: utf-8 -*-

from selenium import webdriver
import time
import ddt
import unittest

#L=[['admin','123456',True],['a','123456',False]]

def get_data():
    L = []
    data_file ='../data/test_data.txt'
    fp = open(data_file ,'r')
    for line in fp.readlines():
        tmp =line.strip().split(',')
        L.append(tmp)
    fp.close()
    return L


@ddt.ddt
class Ranzhi_login(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Chrome()
        self.driver.implicitly_wait(30)
        self.base_url = "http://localhost/ranzhi/www"

    def tearDown(self):
        self.driver.quit()

    @ddt.unpack
    @ddt.data(*get_data())
    def test_ranzhilogin(self,username,password,type):
        driver=self.driver
        driver.get('http://localhost/ranzhi/www')
        driver.find_element_by_id("account").click()
        driver.find_element_by_id("account").send_keys(username)
        driver.find_element_by_id("password").click()
        driver.find_element_by_id("password").send_keys(password)
        driver.find_element_by_id("submit").click()
        time.sleep(3)

        if str(type) == 'True':
            self.assertIn(u'退出',driver.page_source)
        else:
            self.assertIn(u'登录失败',driver.page_source)


if __name__ == '__main__':
    unittest.main()
    #print get_data()




