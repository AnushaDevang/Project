*** Settings ***
Documentation    This suit file handles all the test case related to the
...     invalid credentials
Resource    ../base/common_functionality.resource
Resource    ../pages/login_page.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Verify Invalid Credential Template

*** Test Cases ***
TC1    John    John123    Invalid credentials
TC2    peer    peer123     Invalid credentials
TC3    ${EMPTY}    anu123    Username cannot be empty
TC4    eter    ${EMPTY}    Password cannot be empty

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]    ${username}    ${password}    ${expectedvalue}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login
