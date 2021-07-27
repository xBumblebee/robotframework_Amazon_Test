*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${IN_PAGE} =    css:#authportal-main-section > div:nth-child(2) > div > div.a-section > form > div > div > div > div:nth-child(5) > div > a > span
${NEED_HELP} =    //*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/div[3]/div/a
*** Keywords ***
Verify Product Added
    Sleep    3s
    click link     Proceed to checkout (1 item)

Proceed to Checkout
    page should contain element     ${IN_PAGE}
    element text should be   ${NEED_HELP}   Need help?
    Sleep    3s