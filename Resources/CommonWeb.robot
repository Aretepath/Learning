*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Log In to Client
    Select Frame  id:iframe-signin-node
   # current frame should contain  SignIn
    input text  xpath=/html/body/div/div/form/div[1]/section[1]/input  ${Username}
    sleep  1s
    input text  xpath=/html/body/div/div/form/div[1]/section[2]/input  ${Password}
    Sleep  1s
    Click Button  agree-user-policy-checkbox
    Sleep  2s
    Click Button  login-button
    unselect frame
    wait until page contains  Customer lookup

Close Web
    close all browsers

Start Web
    OPEN BROWSER  ${URL}  ${BROWSER}
    Sleep  4s







