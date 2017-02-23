*** Settings ***
Library  Selenium2Library


*** Variables ***


*** Keywords ***

Verify Page Loaded
    Wait Until Page Contains  Logitech M510


Add to Cart
    #  TODO update this item
    Click Button  id=add-to-cart-button