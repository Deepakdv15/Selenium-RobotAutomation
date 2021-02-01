*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
Looping Test Case
    :For    ${i}    IN RANGE    0    10
    \    log to console    ${i}
    END