*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL1}      https://www.thetestingworld.com/
${URL2}      https://www.google.com/

*** Test Cases ***
Mutiple Browser
    Open Browser    ${URL1}    ${Browser}
    Maximize Browser Window
    Open Browser    ${URL2}    ${Browser}
    Maximize Browser Window
    Switch Browser    1
    ${value}=    get location
    log to console    ${value}
    click element     xpath://a[text()="Login"]
    switch browser    2
    ${value}=    get location
    log to console    ${value}
    Input text    name:q    Hello World