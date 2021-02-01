*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}      https://www.thetestingworld.com/


*** Test Cases ***
Mouse Over
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

    #Open Context Menu    xpath://span[text()="TUTORIAL "]
#    double click element    xpath://a[text()="Login"]
#    press key    css:#username    hello
#    press key    xpath://button[text()="Log in"]    \\13
    #mouse over    xpath://span[text()="TUTORIAL "]
    #wait until page contains    TUTORIAL
    Wait Until Element Contains    xpath://span[text()="TUTORIAL "]    TUTORIAL
    click element    xpath://span[text()="TUTORIAL "]