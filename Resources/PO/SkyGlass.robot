*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Select Sky Glass Products
    wait until page contains  Device
    Click element  soip-product-tile-0
    wait until page contains  Anthracite
    Click element  soip-frame-colour-tile-0
    wait until page contains  Payment
    Click element  soip-payment-tile-2
    sleep  2s
    Click Button  devices-confirm-button
    wait until page contains  Multiscreen devices