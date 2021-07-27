*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CART_BUTTON} =    id=add-to-cart-button
*** Keywords ***
Add to Cart
    click button    ${CART_BUTTON}
    wait until page contains    Added to Cart