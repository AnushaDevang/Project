* Settings *
Documentation   This file handles all the menu for openemr application

Resource    ../base/common_functionality.resource


* Variables *
${Buzz}        xpath=//*[@id="menu_buzz_viewBuzz"]/b

* Keywords *
Open Buzz
   [Arguments]     ${Buzz}
   Click Element   xpath=//*[@id="menu_buzz_viewBuzz"]/b

