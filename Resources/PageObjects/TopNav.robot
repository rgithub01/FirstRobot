*** Settings ***
Library  Selenium2Library


*** Variables ***


*** Keywords ***

Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  twotabsearchtextbox  ${SEARCH_TERM}

Submit Search
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input