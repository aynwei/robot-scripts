*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Load
   # Open Browser  about:blank  gc
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Your Amazon.com