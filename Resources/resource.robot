*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/userDefineKeywords.py

*** Variables ***
#${Browser}    Chrome
#${URL}    https://www.thetestingworld.com/testings/




*** Keywords ***
Start and Maximize Browser
    [Documentation]    This is start browser and Maximize browser
    [Arguments]    ${URL}    ${Browser}
    [Timeout]    28s
    open browser    ${URL}    ${Browser}
    maximize browser window
    sleep    5s
    ${title}=    get title
    #close browser
    [Return]    ${title}

Open Login Browser
    open browser    ${URL}    ${Browser}
    maximize browser window

Close Login Browser
    ${title}=    get title
    close browser

Before test suite
    log    before test suite

After test suite
    log    after test suite

creat folder at runtime
    [Arguments]    ${foldername}    ${subfoldername}
    creat_folder    ${foldername}
    create_subfolder   ${subfoldername}
    log    data logged successfully
    