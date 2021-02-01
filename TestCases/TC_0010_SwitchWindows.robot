*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL1}      https://robotframework.org/


*** Test Cases ***
Test Switch Window
    open browser    ${URL1}    ${Browser}
    maximize browser window
    click element    xpath://a[text()='GitHub']
    sleep    2seconds
#    select window    Robot Framework
#    ${page}=    get location
#    log to console    ${page}
#    sleep    2seconds
#    select window    GitHub - robotframework/robotframework: Generic automation framework for acceptance testing and RPA
#    ${page}=    get location
#    log to console    ${page}
    @{list1}    get window handles
    :FOR    ${var}    IN    @{list1}
    \    select window    ${var}
    \    ${url}=    get location
    \    log to console    ${url}
