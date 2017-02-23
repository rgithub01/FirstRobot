*** Settings ***
Library  Selenium2Library


*** Variables ***


*** Keywords ***

Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close Browser

Insert Testing Data
    Log  Inserting Testing data

Cleanup Testing Data
    Log  Cleaning up the Testing data