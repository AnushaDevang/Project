*** Settings ***
Documentation    This file handles all webelement in the login page

Resource    ../base/common_functionality.resource

*** Variables ***
${USERNAME_LOCATOR}    id=txtUsername
${PASSWORD_LOCATOR}    id=txtPassword
${LOGIN_LOCATOR}    name=Submit



*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_LOCATOR}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Password    ${PASSWORD_LOCATOR}    ${password}

Click Login
    Click Element    ${LOGIN_LOCATOR}
