*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://www.thetestingworld.com/
${Browser}    Chrome

*** Test Cases ***
Vailidate Element
    open browser    ${URL}    ${Browser}
    maximize browser window
    page should contain    VIDEOS
    sleep     5seconds
    page should not contain    VIDEOS1
    sleep    5seconds
    page should contain link    xpath://a[text()='Login']
    sleep    5seconds
    click element    xpath://a[text()='Login']
    page should contain checkbox    xpath://input[@id="remember"]    message=checkbox present