*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}    Chrome
${URL}      https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_001 Browser start and close
    Open_Browser    ${URL}      ${Browser}
    Input text    css:[name='fld_username']    TestingWorld
    Sleep    1s
    Input text    css:input[name='fld_email']    TestingWolrd@gmail.com
    Sleep    2s
    ${value}    Get Text    name:fld_username
    log    ${value}
    Clear Element Text    name=fld_username
    Capture Page Screenshot    filename=../Snapshot/TC1.png
    Close Browser