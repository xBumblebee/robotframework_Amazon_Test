*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/AmazonApp.robot

Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test

#robot -d results tests/amazon.robot

*** Variables ***
${BROWSER} =    opera
${START_URL} =    https://www.amazon.com
${SEARCH_TERM} =    Ferrari 458
${LOGIN_EMAIL} =    admin@robotframeworktutorial.com
${LOGIN_PASSWORD} =    mypassword123

*** Test Cases ***
Should be able to login
    AmazonApp.Login    ${LOGIN_EMAIL}    #${LOGIN_PASSWORD}

Logged out user should be able to search for products
    [Tags]      Current
    AmazonApp.Search for Products
    AmazonApp.Do Some Custom Thing

Logged out user should be able to view a product
    [Documentation]    This is some basic info about the test
    [Tags]      Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout

Logged out user should be able to add product to cart
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user should be asked to sign in to check out
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout





