*** Settings ***
Library  SeleniumLibrary
Resource  PO/LandingPage.robot

*** Variables ***
${SEARCH_BAR} =         id = twotabsearchtextbox
${SEARCH_BUTTON} =      xpath=//*[@id="nav-search"]/form/div[2]/div/input
${SIGNIN_MAIN_HEADING} =  xpath=//h1

*** Keywords ***
Log in
    [Arguments]  ${Username}  ${Password}
    Fill in "Email" Field  ${Username}
    Fill in "Password" Field  ${Password}
    Click "Sign in" Button

Fill in "Email" Field
    [Arguments]  ${Username}
    Log  Filling email field with ${Username}

Fill in "Password" Field
    [Arguments]  ${Password}
    Log  Filling password field with ${Password}

Click "Sign in" Button
    Log  Click Submit Button

Search for product
    LandingPage.Load
    LandingPage.Verify Page Loaded
    Input Text  ${SEARCH_BAR}  ${SEARCH_TERM}
    #Click Button  css=#nav-search > form > div.nav-right > div > input
    Click Button  ${SEARCH_BUTTON}
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Select product from search result
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results

Add product to cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart

Begin checkout
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain Element  ${SIGNIN_MAIN_HEADING}
    element text should be  ${SIGNIN_MAIN_HEADING}  Sign in

