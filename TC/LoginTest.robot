*** Settings ***
Library  SeleniumLibrary
Resource  ..\Resources\LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  https://www.olybet.lt/user/profile
${userName}   assignmenttaskv@oit.lt
${password}   Waitreb5DCCYwN

*** Test Cases ***
LoginTest
    Navigate    ${SiteUrl}  ${Browser}
    Enter UserName      ${userName}
    Enter Password      ${password}
    Click SignIn
    close my browser