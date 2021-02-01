*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Resource    ../Resources/resource.robot

*** Variables ***
${URL}    https://www.thetestingworld.com/testings/
${Browser}    Chrome

*** Test Cases ***
Testing World
    ${title}=    Start and Maximize Browser    ${URL}    ${Browser}
    log    ${title}
    creat folder at runtime    testing    hello123
#    ${text}=    get text    xpath://a[text()="Read Detail"]
#    log    ${text}
#    ${value}=    Get Value    css:input[type="submit"]
#    log    ${value}
#    select from list by index    name:sex    1
#    ${index}=    Get Selected List Label    name:sex
#    log    ${index}
#    select from list by label    name:sex    Female
#    ${value}=    get selected list value    name:sex
#    log    ${value}
#    ${AllItems}=    get list items    name:sex
#    log    ${AllItems}

    close browser