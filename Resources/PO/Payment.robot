*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Capture Payment Details
    click button  basket-bar-checkout-button
    wait until page contains  Payment
    Sleep  15s
    Select frame  payment-iframe-node
    sleep  1s
   # click button  xpath=//*[@id="paymentAuth"]/div[2]/button