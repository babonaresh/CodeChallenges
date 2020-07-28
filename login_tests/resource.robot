*** Settings ***
Documentation     Robot Keywords

Library           SeleniumLibrary

*** Variables ***
${SERVER}         https://clarity.dexcom.com/
${BROWSER}        Chrome
${DELAY}          0
${VALID USER}     nilepatest001
${VALID PASSWORD}    Password@1
${LOGIN URL}      ${SERVER}
${WELCOME URL}    ${SERVER}
${ERROR URL}      ${SERVER}/error.html

*** Keywords ***
Open login page
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Open home_users page
    Click Button  xpath:/html/body/div[1]/div[1]/div/div[2]/div/nav/ul/li[1]/div/a


Input Username
    [Arguments]    ${username}
    Input Text    username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button  xpath:/html/body/div/div/div/div/form/div[3]/div/input

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    DEXCOM

