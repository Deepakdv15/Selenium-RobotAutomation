*** Settings ***
Library    SelenoumLibrary

*** Variables ***



*** Test Cases ***
TC_003 Testing
    ${var}=    set variable    Hello World
    Log To Console    ${var}
    ${var}=    set variable    log to console
    run keyword    ${var}    Hello Testing world
    ${value}=    set variable    No
    run keyword if    '${value}'=='Yes'    log to console    value found
    run keyword if    '${value}'=='No'     log to console    Value not found
