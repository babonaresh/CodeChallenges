*** Settings ***
Documentation     Robot Keywords

Library           SeleniumLibrary

*** Variables ***
${SERVER}         https://clarity.dexcom.com/
${BROWSER}        firefox
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
    click link  link:Dexcom CLARITY for Home Users


Input Username
    [Arguments]    ${username}
    Input Text    username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button  xpath://*[@id="edit-actions"]/input

