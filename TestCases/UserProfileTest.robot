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
    Change password
    [Teardown]    Close Browser

*** Keywords ***
Navigate to the page
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   4
    wait until page contains element    id:onesignal-slidedown-dialog
    click element   ${slide_down_container_cancel_btn}

Login
    click element   ${login_btn}
    input text      ${email_input_field}    ${userName}
    input text      ${password_input_field}      ${password}
    click element    ${submit_btn}
    sleep  5
    Element Text Should Be  ${profile_contract_No}    (Contract № 907803)

Change password
    execute javascript  window.scrollTo(0,800)
    sleep   2
    click element   ${changePassword_btn}
    sleep  5
    Element Text Should Be    ${popup_title}    Change password
    input text    ${changePassword_current_field}     ${password}
    input text      ${new_password_input_field}     NewPassword
    click element      ${password_confirmation_btn}
    sleep  4
    #wait until page contains element    id:ora-modal
    #Element Text Should Be    class:paragraph    Password changed
    click element       ${close_modal_btn}
    sleep  4
    click element       ${user_profile_btn}
    click element       ${sign_out_btn}



