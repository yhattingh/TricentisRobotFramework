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
Browse from category list
    click option from category list     electronics
    select item from sub category list  cell-phones
    click item                          smartphone
    click add to cart button
    go to shopping cart
    check cart added item               Smartphone


