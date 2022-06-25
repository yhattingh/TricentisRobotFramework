*** Settings ***
Documentation                       This is the cart page object
Library                             SeleniumLibrary
Library                             String
Library                             Collections
Library    XML

*** Keywords ***
check cart added item
    [Arguments]                 ${expectedproduct}
    Element Text Should Be      css:.product-name             ${expectedproduct}

check cart qty
    [Arguments]                 ${expectedqty}
    Element Should Contain      css:.qty-input                ${expectedqty}

update cart qty
    [Arguments]                 ${inputqty}
    Input Text                  css:.qty-input                ${inputqty}

click remove checkbox
    Click Element               css:.remove-from-cart [type]
    Click Element               css:input[name='updatecart']

check cart is empty
    [Arguments]                 ${cartText}
    Element Text Should Be      css:.order-summary-content    ${cartText}

select country from list
    [Arguments]                 ${dropDownOption}
    Click Element               xpath:/html//select[@id='CountryId']
    Click Element               css:select#CountryId > option[value='${dropDownOption}']

select province from list
    [Arguments]                ${dropDownOption}
    Click Element               xpath:/html//select[@id='StateProvinceId']
    Click Element               css:#StateProvinceId [value='${dropDownOption}']
    
enter postal code
    [Arguments]                 ${postalCode}
    Input Text                  css:input#ZipPostalCode        ${postalCode}
    
click estimate shipping button
    Click Element               css:input[name='estimateshipping']

get data after estimate shipping
    [Arguments]                 ${returnedData}
    Element Text Should Be    css:.shipping-results .shipping-option-item:nth-of-type(1) .option-description    ${returnedData}

