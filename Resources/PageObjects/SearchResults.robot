*** Settings ***
Library  Selenium2Library


*** Variables ***


*** Keywords ***

Verify Search Completed
    Wait Until Page Contains  results for ${SEARCH_TERM}


Click Product Link
    Click Link  xpath=//*[@id="result_2"]/div/div/div/div[2]/div[2]/div[1]/a