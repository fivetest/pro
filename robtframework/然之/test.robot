*** Settings ***
Library           Selenium2Library
Resource          resource.robot

*** Test Cases ***
创建订单
    打开浏览器
    用户登录    admin    123456
    Click Link    订单
    Select Frame    id=iframe-dashboard
    Click Link    创建订单
    Select Checkbox

创建客户
    打开浏览器
    用户登录    admin    123456
