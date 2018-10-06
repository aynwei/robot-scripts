*** Settings ***
Documentation  this is some basic info
Resource  ../Resources/Amazongui.robot
Resource  ../Resources/Common.robot

Test Setup  Begin web test
Test Teardown  End web tests



*** Variables ***
${BROWSER} =  gc
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Lamborghini Calendar
${USER_NAME} =  happyweiyan@gmail.com
${PASSWORD} =  mypassword

*** Test Cases ***
User should be able to login
    [Tags]  Smoke
    Amazongui.Log in  ${USER_NAME}  ${PASSWORD}

User can search for products
    [Documentation]  this is the test
    [Tags]  Current

    Amazongui.Search for product



User must sign in
    [Documentation]  this is the test
    [Tags]  Smoke

    Amazongui.Search for product
    Amazongui.Select product from search result
    Amazongui.Add product to cart
    Amazongui.Begin checkout


