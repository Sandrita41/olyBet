*** Settings ***
Library  SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Navigate
    [Arguments] ${SiteUrl}  ${Browser}
    open browser    ${SiteUrl}  ${Browser}
    maximize browser window

Enter UserName
    [Arguments] ${userName}
    Input Text  ${email_field}  ${username}

Enter Password
    [Arguments] ${password}
    Input Text  ${password_field}  ${password}

Click SignIn
    click button    ${login_btn}

#Verify Successfull Login

close my browser
    close all browsers



