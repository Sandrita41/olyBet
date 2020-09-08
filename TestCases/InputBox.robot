*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Variables ***
${browser}  chrome
${url}  https://www.olybet.lt/user/profile
${userName}   assignmenttaskv@oit.lt
${password}   Waitreb5DCCYwN

*** Test Cases ***
HandligAlerts
    Navigate to the page
    Login
    close browser

*** Keywords ***
Navigate to the page
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   5
    wait until page contains element    id:onesignal-slidedown-dialog
    click element   id:onesignal-slidedown-cancel-button

Login
    click element   ${login_btn}
    input text      ${email_input_field}    ${userName}
    input text      ${password_input_field}      ${password}
    click element    ${submit_btn}
    Element Text Should Be    locator    expected_text

ChangePassword



