*** Settings ***
Documentation   Tricentis tests
# Library section
Library                             SeleniumLibrary
Library                             String
Library                             Collections

# Global resources section
Resource                            ../frameworkClasses/globalSetup.robot

# Project resource section
Resource                            ../tricentisPages/landingPage.robot
Resource                            ../tricentisPages/itemPage.robot
Resource                            ../tricentisPages/cartPage.robot
Resource                            ../tricentisPages/comparePage.robot


#Suite setup and tear down section
Suite Setup                             test setup    ${url}
Suite Teardown                          Close Browser

*** Variables ***
${url}                                  http://demowebshop.tricentis.com/

*** Test Cases ***
#Compare selected items
GIVEN_shopperIsOnTheLandingPage_WHEN_shopperSelectsOptionFromCategoryList_AND_selectsAnItemFromSubCategoryList_AND_shopperClicksCompareListButton_AND_shopperSelectsAnotherItemFromList_AND_clicksCompareListButton_THEN_ChecksPricesOnBothItems
    click option from category list     electronics
    select item from sub category list  cell-phones
    click item                          smartphone
    click add to compare list button
    click option from category list     electronics
    select item from sub category list  cell-phones
    click item                          phone-cover
    click add to compare list button
    check price for item                2   10.00
    check price for item                3   100.00




