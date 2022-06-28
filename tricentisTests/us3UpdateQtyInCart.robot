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


#Suite setup and tear down section
Suite Setup                             test setup    ${url}
Suite Teardown                          Close Browser

*** Variables ***
${url}                                  http://demowebshop.tricentis.com/

*** Test Cases ***
#Update the quantity
GIVEN_shopperIsOnTheLandingPage_WHEN_shopperSelectsOptionFromCategoryList_AND_selectsAnItemFromSubCategoryList_AND_addsItemToCart_AND_shopperUpdatesQty_THEN_ChecksThatQtyIsUpdated
    click option from category list     electronics
    select item from sub category list  cell-phones
    click item                          smartphone
    click add to cart button
    go to shopping cart
    check cart added item               Smartphone
    check cart qty                      1
    update cart qty                     3
    check cart qty                      3


