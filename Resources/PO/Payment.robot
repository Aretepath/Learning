*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Capture Payment Details
    click button  basket-bar-checkout-button
    wait until page contains  Payment
    Sleep  8s
    Log  Method for creating One Off Payment
    Select frame  payment-iframe-node
    Select frame  css=#payment-panel > iframe
    wait until page contains  The contactor must be the credit/debit card holder or have card holders permission to use this card
    click element  css=#paymentAuth > div.payment-auth-container > div.toolkit-form-container > div > div.toolkit-payment-method-form.take-payment.capture-payment-details > form > div:nth-child(1) > div > div.payment-auth-credit-card-form-container > div.cardowner-type-switcher > div > ul > li:nth-child(1) > label
    Sleep  1s
    input text  css=#paymentAuth > div.payment-auth-container > div.toolkit-form-container > div > div.toolkit-payment-method-form.take-payment.capture-payment-details > form > div:nth-child(1) > div > div.payment-auth-credit-card-form-container > div.form-group.credit-card-number.unknown-credit-card > div > div > input  4111111111111111
    Sleep  1s
    input text  css=#paymentAuth > div.payment-auth-container > div.toolkit-form-container > div > div.toolkit-payment-method-form.take-payment.capture-payment-details > form > div:nth-child(1) > div > div.payment-auth-credit-card-form-container > div.validatedInput.form-group.security-code > div > div > input  123
    Sleep  1s
    input text  css=#paymentAuth > div.payment-auth-container > div.toolkit-form-container > div > div.toolkit-payment-method-form.take-payment.capture-payment-details > form > div:nth-child(1) > div > div.payment-auth-credit-card-form-container > div.validatedInput.form-group.card-holders-name > div > div > input  Clark-Soipleave
    Sleep  1s
    input text  css=#paymentAuth > div.payment-auth-container > div.toolkit-form-container > div > div.toolkit-payment-method-form.take-payment.capture-payment-details > form > div:nth-child(1) > div > div.payment-auth-credit-card-form-container > div.splited-input.form-group.expiry-date > div.input-group.error > div > input.form-control.splited-input-field-1  01
    Sleep  1s
    input text  css=#paymentAuth > div.payment-auth-container > div.toolkit-form-container > div > div.toolkit-payment-method-form.take-payment.capture-payment-details > form > div:nth-child(1) > div > div.payment-auth-credit-card-form-container > div.splited-input.form-group.expiry-date > div.input-group.error > div > input.form-control.splited-input-field-2  25
    Sleep  2s
    click button  css=#paymentAuth > div.external-module-footer > button
    unselect frame
    Log  Method for creating Continous Payment
    Sleep  6s
    Select frame  billing-iframe-node
    Select frame  css=#payment-panel > iframe
    click element  css=#CRPD > div > div.column-container > div.panel-container > div > div > div.form-container > div.payment-methods > ul > li:nth-child(2) > label
    Sleep  1s
    click element  css=#CRPD > div > div.column-container > div.panel-container > div > div > div.form-container > div.toolkit-form-container > div > div > ul > li:nth-child(2) > a
    Sleep  1s
    click element  css=#CRPD > div > div.column-container > div.panel-container > div > div > div.form-container > div.toolkit-form-container > div > div > form > div > div > ul > li > label
    Sleep  1s
    click element  css=#CRPD > div > div.column-container > div.panel-container > div > div > div.form-container > div.toolkit-form-container > div > div > form > div > div > ul > div > div > label
    Sleep  2s
    #ok Button
    click button  css=#CRPD > div > div.external-module-footer > button
    unselect frame
    Sleep  1s
    click button  css=#basket-bar-payment-button
    Log  Payment Details Captured Succesfully!
    wait until page contains  Order Confirmation