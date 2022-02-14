*** Settings ***
Documentation    This file handles all the menu in the orange hrm application

Resource    ../base/common_functionality.resource

*** Variables ***
${MYINFO}    xpath=//b[text()='My Info']
${PERFORMANCE}    xpath=//b[text()='Perfomance ']

*** Keywords ***
Click MyInfo
    [Arguments]     ${MYINFO}
    Click Element    xpath=//b[text()='My Info']

Click Perfomance
    [Arguments]     ${PERFORMANCE}
    Click Element    xpath=//b[text()='Perfomance ']

