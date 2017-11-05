*** Settings ***
Library           Selenium2Library
Resource          resource.robot

*** Test Cases ***
新增联系人
    打开浏览器
    用户登录    admin    123456
    Sleep    3s
    Click Element    xpath=//*[@id="s-menu-1"]/button
    Select Frame    id=iframe-1
    Click Element    xpath=/html/body/nav/div[2]/ul/li[5]/a
    Click Link    添加联系人
    Input Text    id=realname    张三
    Click Element    id=newCustomer
    Input Text    xpath=//*[@id="name"]    旺旺
    Sleep    3s
    Click Element    xpath=//*[@id="gender1"]
    Comment    Select Radio Button    id=gender    genderm
    Input Text    id=dept    sd
    Input Text    id=title    会计
    Input Text    id=join    2017-4-18
    Input Text    id=email    26354747@qq.com
    Input Text    id=mobile    13244554234
    Select From List By Value    id=type    collective
    Sleep    3s
    Click Element    xpath=//*[@id="submit"]

删除联系人
    用户登录    admin    123456
    Sleep    3s
    进入客户管理的fram
    Click Element    xpath=/html/body/nav/div[2]/ul/li[5]/a
