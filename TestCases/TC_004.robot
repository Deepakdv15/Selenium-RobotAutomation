*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
TC 004 Test Case
    @{mylist}    create list    deepak    yadav    22.3    45
    #Log To Console    @{mylist}
    ${list_length}      get length    ${mylist}
    Log To Console    ${list_length}
    ${list_data}=    get from list    ${mylist}    0
    log to console    ${list_data}
    @{MY_SIMPLE_LIST}=  Create List   Star Trek   Star Wars    Battleship Galactica
    ${NUM}=  Get Length  ${MY_SIMPLE_LIST}
    ${list_data}=    get from list    ${MY_SIMPLE_LIST}    0
    log to console    ${NUM}
    log to console    ${list_data}
    : FOR    ${i}    IN    @{mylist}
    \    log to console    ${i}