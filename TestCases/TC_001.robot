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
    Sleep    3s
    Select Radio Button    add_type    office
    Sleep    5s
    Select Checkbox    css:[name="terms"]
    Set Selenium Speed    5s
    Select From List By Index    css:[name="sex"]    2
    Select From List By Value    css:[name="sex"]    1
    Select From List By Label    css:[name="sex"]    Female

    Close Browser

*** Keywords ***
