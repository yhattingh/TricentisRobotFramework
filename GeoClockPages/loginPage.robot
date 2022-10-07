*** Settings ***
Documentation                       This is the landing page object for GeoClock
Library                             SeleniumLibrary
Library                             String
Library                             Collections

# Global resources section
Resource                            ../frameworkClasses/globalSetup.robot

#Suite setup and tear down section
Suite Setup                          test setup    ${url}
Suite Teardown                       Close Browser

*** Keywords ***
click in username field
    Input Text      css:[placeholder='Username']    alopez

click in password field
    Input Text      css:[placeholder='Password']    option-CRUMP-whale

*** Variables ***
${url}              https://labs-dev.geoclock.net/#/login/password-login

*** Test Cases ***
#Login with valid password
shouldLoginWithValidPassword
    click in username field         
    click in password field
