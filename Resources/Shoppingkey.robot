*** Settings ***
Resource    ../Resources/PageObjects/LandingPage.robot
Resource    ../Resources/PageObjects/TopNav.robot
Resource    ../Resources/PageObjects/SearchResults.robot
Resource    ../Resources/PageObjects/Items.robot
Resource    ../Resources/PageObjects/Cart.robot
Resource    ../Resources/PageObjects/SignIn.robot

*** Variables ***



*** Keywords ***

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select product from Search results
    SearchResults.Click Product Link
    Items.Verify Page Loaded

Add product to cart
    Items.Add to Cart

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded
