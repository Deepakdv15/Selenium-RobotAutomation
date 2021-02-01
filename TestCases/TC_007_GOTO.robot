*** Settings ***
Library    SeleniumLibrary
Library    Collections
*** Variables ***
${Browser}    Chrome
${URL1}    https://www.thetestingworld.com/testings/
${URL2}    https://www.google.com/

*** Test Cases ***
Test Goto
    Open Browser    ${URL1}    ${Browser}
    Go To    ${URL2}
    ${location}=    Get Location
    log to console    ${location}
    Go Back
    ${location}=    Get Location
    log to console    ${location}
    Go To    ${URL1}
    execute javascript    window.scrollTo(0,300)
    sleep    10seconds


