*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Select Sky Glass Products
    Sleep  2s
    wait until page contains  Device
    Click element  soip-product-tile-0
    wait until page contains  Anthracite
    Click element  soip-frame-colour-tile-0
    wait until page contains  Payment
    Click element  soip-payment-tile-2
    sleep  2s
    Click Button  devices-confirm-button
    wait until page contains  Multiscreen devices

Select All Addons
    wait until page contains  Device
    Click element  soip-product-tile-1
    wait until page contains  Anthracite
    Click element  soip-frame-colour-tile-1
    wait until page contains  Payment
    Click element  soip-payment-tile-1
    sleep  2s
    Click Button  devices-confirm-button
    wait until page contains  Multiscreen devices
    click element  css=#multiscreen-puck-increment-decrement-id-inc-button > div > svg
    Sleep  5s
    click element  css=#additional-products-soip-uhd-select-button-id
    Sleep  5s
    Click element  css=#additional-products-soip-mov_comp-select-button-id
    Sleep  5s
    Click element  css=#additional-products-soip-sp_comp_all-select-button-id
    Sleep  5s
    Click element  css=#additional-products-soip-tv_kids-select-button-id
    Sleep  5s
    Click element  css=#additional-products-soip-tv_bt_sport-select-button-id
    Sleep  5s
    Click element  css=#netflix-tile-group-tile-1-product-selector
    wait until page contains  £130.00

