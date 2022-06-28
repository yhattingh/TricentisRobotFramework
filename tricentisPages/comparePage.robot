*** Settings ***
Documentation                       This is the compare page object
Library                             SeleniumLibrary
Library                             String
Library                             Collections
Library    XML

*** Keywords ***
check price for item
    [Arguments]                     ${selectedItem}     ${price}
    Element Text Should Be          css:.product-price > td:nth-of-type(${selectedItem})    ${price}