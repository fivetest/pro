*** Settings ***
Library           Selenium2Library
Resource          resource.robot

*** Test Cases ***
用户登录—登录成功
    [Template]    登录公共逻辑
    admin    123456    退出

用户登录—登录失败 密码错误
    [Template]    登录公共逻辑
    admin    1234567    用户名和密码不匹配

*** Keywords ***
登录公共逻辑
    [Arguments]    ${username}    ${password}    ${flag}
    打开浏览器
    用户名和密码    ${username}    ${password}
    登录
    等待3s
    判断页面是否包含    ${flag}
    关闭浏览器
