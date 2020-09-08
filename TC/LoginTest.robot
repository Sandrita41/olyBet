*** Settings ***
Library  SeleniumLibrary
Library    Collections
Resource  ../../Resources/Keywords.robot

*** Variables ***
${browser}  chrome
${siteUrl}  https://www.olybet.lt/user/profile
${user}     assignmenttaskv@oit.lt
${pwd}  Waitreb5DCCYwN

*** Test Cases ***
LoginTest
    Open my Browser ${siteUrl} ${browser}
    Enter username  ${user}
    Enter password  ${pwd}
    Click SignIn