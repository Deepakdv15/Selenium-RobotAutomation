*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resource.robot
Documentation    This for web login page

*** Variables ***
${URL}    https://www.thetestingworld.com/
${Browser}    Chrome

*** Test Cases ***
Login Page
    [Documentation]    This is the test case for Login page
    [Timeout]    30s
    ${title}=    Start and Maximize Browser    ${URL}    ${Browser}
    log to console    ${title}
    log    ${title}
