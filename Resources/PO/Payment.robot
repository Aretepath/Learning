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
    #wait until page contains  "The contactor must be the credit/debit card holder or have card holders permission to use this card"
    click element  ccs=#paymentAuth > div.payment-auth-container > div.toolkit-form-container > div > div.toolkit-payment-method-form.take-payment.capture-payment-details > form > div:nth-child(1) > div > div.payment-auth-credit-card-form-container > div.cardowner-type-switcher > div > ul > li:nth-child(1) > label
    sleep  1s
    input text  xpath=//*[@id="paymentAuth"]/div[1]/div[2]/div/div[1]/form/div[1]/div/div[2]/div[2]/div/div/input  4111111111111111
    sleep  1s
    input text  xpath=//*[@id="paymentAuth"]/div[1]/div[2]/div/div[1]/form/div[1]/div/div[2]/div[3]/div/div/input  123
    sleep  1s
    input text  xpath=//*[@id="paymentAuth"]/div[1]/div[2]/div/div[1]/form/div[1]/div/div[2]/div[4]/div/div/input  AutomationTest
    sleep  1s
    input text  xpath=//*[@id="paymentAuth"]/div[1]/div[2]/div/div[1]/form/div[1]/div/div[2]/div[5]/div[2]/div/input[1]  01
    sleep  1s
    input text  xpath=//*[@id="paymentAuth"]/div[1]/div[2]/div/div[1]/form/div[1]/div/div[2]/div[5]/div[2]/div/input[2]  25
    #click element  xpath=//*[@id="paymentAuth"]/div[1]/div[2]/div/div[1]/form/div[1]/div/div[2]/div[8]/div/div/label
    unselect frame
    click button  xpath=//*[@id="paymentAuth"]/div[2]/button