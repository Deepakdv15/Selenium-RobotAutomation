*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resource.robot
Test Setup    Open Login Browser
Test Teardown    Close Login Browser
*** Variables ***
#${URL}    https://www.thetestingworld.com/
#${Browser}    Chrome

*** Test Cases ***
Test Login Page2
     [Tags]    Sanity    Smoke
#    [Setup]    Open Login Browser
#    sleep    4s
#    [Teardown]    Close Login Browser
    Input text    css:[name='fld_username']    TestingWorld
    Sleep    1s
    Input text    css:input[name='fld_email']    TestingWolrd@gmail.com


Test Select radio2
    [Tags]    Smoke
    Select Radio Button  add_type    office
    sleep    5



