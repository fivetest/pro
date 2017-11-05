*** Settings ***
Library           Selenium2Library
Resource          resource.robot

*** Test Cases ***
新增产品
    用户登录    admin    123456
    Sleep    3s
    进入客户管理的fram
    Click Link    产品
    Click Link    添加产品
    Sleep    3s
    Input Text    id=name    马达
    Input Text    id=code    c1
    Comment    Input Text    id=line
    Click Element    id=submit
    Close Browser

新增产品线
    用户登录    admin    123456
    Sleep    3s
    进入客户管理的fram
    Click Link    产品
    Click Link    维护产品线
    Input Text    id=values[]    齿轮
    Click Element    id=submit
    Close Browser

删除产品
    用户登录    admin    123456
    Sleep    3s
    进入客户管理的fram
    Click Link    产品
    Click Link    删除
    Dismiss Alert
    Close Browser
