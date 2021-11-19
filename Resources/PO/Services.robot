*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Confirm Key Facts
    click element  basket-bar-key-facts-container
    wait until page contains  Key Facts
    #wait until page contains  "If you don’t have one, you'll need to create a Sky ID and link your Sky Account to track your order. Follow the on screen instructions to get your device up and running. If you don’t have an active subscription, your Sky Glass will have reduced functionality. More information can be found on Sky.com"
    click element  css=#key-facts-drawer > div:nth-child(2) > label > span > span
    Sleep  2s
    click element  css=#key-facts-drawer > div:nth-child(2) > label > span > span
    Sleep  2s
    click element  css=#key-facts-drawer > div:nth-child(2) > label > span > span
    Sleep  2s
    click element  css=#key-facts-drawer > div:nth-child(2) > label > span > span
    Sleep  3s
    click element  css=#key-facts-drawer > div > label > span > span
    Sleep  1s
    click element  css=#accept-contract-0 > div > label > span
    click button  basket-bar-products-button
    wait until page contains  To be read word for word