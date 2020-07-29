*** Settings ***
Documentation     test suite with BDD and Robot framework style test.

Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Verify analysisSessionId
    [Tags]  call
    Check analysisSessionId

*** Keywords ***


