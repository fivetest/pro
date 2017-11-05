*** Settings ***
Library           Selenium2Library

*** Variables ***
${base_url}       http://localhost/bugfree

*** Keywords ***
打开浏览器
    Open Browser    ${base_url}

用户名和密码
    [Arguments]    ${username}    ${password}
    Input Text    id=LoginForm_username    ${username}
    Input Password    id=LoginForm_password    ${password}

登录
    Click Element    id=SubmitLoginBTN

等待3s
    Sleep    3s

判断页面是否包含
    [Arguments]    ${flag}
    Page Should Contain    ${flag}

关闭浏览器
    Close Browser
