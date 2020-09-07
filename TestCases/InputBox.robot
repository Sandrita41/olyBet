*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.olybet.lt/user/profile
${userName}   assignmenttaskv@oit.lt
${password}   Waitreb5DCCYwN

*** Test Cases ***
HandligAlerts
    Navigate to the page
    Login
    #close browser
   # element should be visible   id:onesignal-slidedown-dialog

*** Keywords ***
Navigate to the page
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   5
    wait until page contains element    id:onesignal-slidedown-dialog
    click element   id:onesignal-slidedown-cancel-button

Login
    click element   class:item-login
    input text      id:user_login_username    ${userName}
    input text      id:user_login_password      ${password}
    click element    xpath=//*[@id="form-login"]/div[2]/button
    Element Text Should Be    locator    expected_text

ChangePassword



