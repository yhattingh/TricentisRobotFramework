*** Settings ***
Documentation                       This is the item page object
Library                             SeleniumLibrary
Library                             String
Library                             Collections

*** Keywords ***
click item
    [Arguments]         ${selectItem}
    Click Element       css:[data-productid] .details [href='\/${selectItem}']

click add to cart button
    Click Button        css:.add-to-cart-button.button-1

go to shopping cart
    Click Link          link:Shopping cart

click add to cart button second item
    Click Button        css:div:nth-of-type(3) > .product-item input[value='Add to cart']

click add to compare list button
    Click Button        css:input[value='Add to compare list']





    