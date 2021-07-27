*** Settings ***
Documentation   Amazon top navigation
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCHBAR} =    id=twotabsearchtextbox
${TOPNAV_SEARCHBUTTON} =    xpath:/html/body/div[1]/header/div/div[1]/div[2]/div/form/div[3]/div/span/input

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text    ${TOPNAV_SEARCHBAR}    ${SEARCH_TERM}

Submit Search
    click button    ${TOPNAV_SEARCHBUTTON}

