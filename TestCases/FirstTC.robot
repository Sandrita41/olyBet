*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.olybet.lt/user/profile
*** Test Cases ***
LoginTest
    open browser  ${url}  ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    input text    id:email    sandraadomaviciene1988@gmail.com
    input text    id:pass     makdonaldas41
