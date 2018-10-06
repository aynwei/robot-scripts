*** Settings ***
Library  SeleniumLibrary
*** Variables ***
#${my_v} =  ie

*** Test Cases ***
Test variables
    [Tags]  Current
    ${my_v} =  Set Variable  ie
    Begin web test  ${my_v}
    End web tests

*** Keywords ***
Begin web test
    [Arguments]  ${my_v}
    Open Browser  about:blank  ${my_v}


End web tests
    Close Browser
