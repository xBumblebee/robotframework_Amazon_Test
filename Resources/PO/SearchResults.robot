*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains    results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]    Clicks on the first product in the search results
    click link    css:#search > div.s-desktop-width-max.s-desktop-content.s-opposite-dir.sg-row > div.s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(2) > div > span > div > div > div > div > div > div:nth-child(1) > h2 > a