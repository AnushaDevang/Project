*** Settings ***
Documentation    This file contains reusable keywords

Library    SeleniumLibrary
Library    OperatingSystem


*** Variables ***
${BROWSER_NAME}    chrome
${URL}    https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Launch Browser
    Set Local Variable    ${driver_path}        chromedriver
    Open Browser      browser=${BROWSER_NAME}      executable_path=${EXECDIR}${/}drivers${/}${driver_path}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    Go To    url=${URL}


End Browser
    Capture page screenshot
    Close Browser