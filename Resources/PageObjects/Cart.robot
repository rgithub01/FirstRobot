*** Settings ***
Library  Selenium2Library



*** Variables ***


*** Keywords ***

Verify Product Added
    Wait Until Page Contains  Added to Cart

Proceed to Checkout
    Click Link  xpath=//*[@id="hlb-ptc-btn-native"]