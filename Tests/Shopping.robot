*** Settings ***
Documentation  This is basic information about the Suite
Resource    ../Resources/Shoppingkey.robot
Resource    ../Resources/General.robot

Suite Setup  Insert Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  logitech mouse


*** Test Cases ***
User can search for products
    [Documentation]  About test information
    [Tags]  Smoke  Product

    Shoppingkey.Search for Products

User can view a product
    [Documentation]  About test information
    [Tags]  Smoke

    Shoppingkey.Search for Products
    Shoppingkey.Select product from Search results


User can add a product to cart
    [Documentation]  About test information
    [Tags]  Current

    Shoppingkey.Search for Products
    Shoppingkey.Select product from Search results
    Shoppingkey.Add product to cart


User must sign in to check out
    [Documentation]  About test information
    [Tags]  Smoke

    Shoppingkey.Search for Products
    Shoppingkey.Select product from Search results
    Shoppingkey.Add product to cart
    Shoppingkey.Begin Checkout
