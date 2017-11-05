*** Settings ***
Library           Selenium2Library

*** Variables ***
${base_url}       http://localhost/ranzhi/www/

*** Keywords ***
打开浏览器
    Open Browser    ${base_url}    gc

用户登录
    [Arguments]    ${username}    ${password}
    打开浏览器
    Input Text    id=account    ${username}
    Input Password    id=password    ${password}
    Click Element    id=submit

进入客户管理的fram
    Click Element    xpath=//*[@id="s-menu-1"]/button
    Select Frame    id=iframe-1
