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
Update the Estimate Shipping Info
    click option from category list     electronics
    select item from sub category list  cell-phones
    click item                          smartphone
    click add to cart button
    go to shopping cart
    check cart added item               Smartphone
    select country from list            1
    select province from list           54
    enter postal code                   7600
    click estimate shipping button
    get data after estimate shipping    Compared to other shipping methods, like by flight or over seas, ground shipping is carried out closer to the earth




