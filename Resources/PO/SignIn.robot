*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login with Valid Credentials
    [Arguments]     ${Username}    ${Password}
    Fill Email Field    ${Username}
    Fill Password Field    ${Password}
    Click Sign In Button

Verify Page Loaded
    page should contain element    css:#authportal-main-section > div:nth-child(2) > div > div.a-section > form > div > div > div > div:nth-child(5) > div > a > span
    element text should be  //*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/div[3]/div/a    Need help?
    Sleep    3s

Fill Email Field
    [Arguments]    ${Username}
    Log    Filling "Email" field with    ${Username}
Fill Password Field
    [Arguments]    ${Password}
    Log    Filling "Password" field with    ${Password}
Click Sign In Button
    Log    Clicking "Submit" Button