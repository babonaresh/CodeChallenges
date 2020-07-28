*** Settings ***
Documentation     test suite with BDD and Robot framework style test.

Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Valid Login
    Given I opened the login page
    opened home_users page
    When I login with "nilepatest001" and password "Password@1"
    Then welcome page should be open

*** Keywords ***
I opened the login page
    Open login page
I opened the home_users page
    Open home_users page
I login with "${username}" and password "${password}"
    Input username    ${username}
    Input password    ${password}
    Submit credentials
