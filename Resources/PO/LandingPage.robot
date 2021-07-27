*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Load
    Go To    ${START_URL}

Verify Page Loaded
    wait until page contains    Today's Deals
    