*** Settings ***
Library  SeleniumLibrary
Library    Collections
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${siteUrl} ${Browser}
    open browser  ${siteUrl} ${Browser}
    Maximize Browser Window

Enter username
    [Arguments]  ${username}
    Input Text  ${email_input_field}    ${username}

Enter password
    [Arguments]  ${password}
    Input Text  ${epassword_input_field}    ${password}

Click SignIn
    click button    ${login_btn}