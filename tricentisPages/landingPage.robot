*** Settings ***
Documentation                       This is the landing page object
Library                             SeleniumLibrary
Library                             String
Library                             Collections

*** Keywords ***
click option from top menu bar
    [Arguments]         ${menuoption}
    Mouse Over          css:.top-menu [href='\/${menuoption}']

select submenu item
    [Arguments]         ${subitem}
    Click Element       css:.top-menu [href='\/${subitem}']

click option from category list
    [Arguments]         ${categoryoption}
    Click Element       css:.block-category-navigation [href='\/${categoryoption}']

select item from sub category list
    [Arguments]         ${subcategoryitem}
    Click Element       css:.block-category-navigation [href='\/${subcategoryitem}']

select item from customer services
    [Arguments]         ${selectoption}
    Click Element    css:[href='\/${selectoption}']