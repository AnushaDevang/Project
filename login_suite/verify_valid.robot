*** Settings ***
Documentation   This suite file verifies all test cases related to valid credentials

Resource    ../pages/login_page.resource
Resource    ../base/common_functionality.resource
Resource    ../pages/main_page.resource
Resource    ../pages/about_page.resource


Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Verify Valid Credential Template


#Library    DataDriver    file=../testdata/orangeHRM.xlsx     sheet_name=VerifyValidCredential
Library     DataDriver       file=..//testdata/validcrendentilas.csv

*** Test Cases ***
TC1

*** Keywords ***
Verify Valid Credential Template
    [Arguments]     ${username}     ${password}
    Input Text    id=txtUsername  ${username}
    Input Password   id=txtPassword   ${password}
    Click Login
    Click Element    ${MYINFO}
    Click Element    ${PERFORMANCE}
    Click Element    ${Buzz}