*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resource.robot
Test Setup    Open Login Browser
Test Teardown    Close Login Browser
#Suite Setup    Before test suite
#Suite Teardown   After test suite
Default Tags    test
Force Tags    testing

*** Variables ***
#${URL}    https://www.thetestingworld.com/
#${Browser}    Chrome

*** Test Cases ***
Test Login Page1
#    [Tags]    Smoke
#    [Setup]    Open Login Browser
#    sleep    4s
#    [Teardown]    Close Login Browser
    Input text    css:[name='fld_username']    TestingWorld
    Sleep    1s
    Input text    css:input[name='fld_email']    TestingWolrd@gmail.com


Test Select radio1
    [Tags]    Smoke    Sanity
    Select Radio Button  add_type    office
    sleep    5


Test Login Page3
    [Tags]    Sanity
#    [Setup]    Open Login Browser
#    sleep    4s
#    [Teardown]    Close Login Browser
    Input text    css:[name='fld_username']    TestingWorld
    Sleep    1s
    Input text    css:input[name='fld_email']    TestingWolrd@gmail.com


Test Select radio3
#    [Tags]    Smoke
    Select Radio Button  add_type    office
    sleep    5



