*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Begin web test

    Open Browser  about:blank  ${BROWSER}


End web tests
    Close Browser

Insert Testing Data
    Log  I am setting up the testing data
Cleanup Testing Data
    Log  I am cleaning up the testing data