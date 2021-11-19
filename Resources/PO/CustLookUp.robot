*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Cust_Search_Text} =  1

*** Keywords ***
Load Standard prospect Customer
    input text  customer-lookup-quick-search  1  ${Cust_Search_Text}
    Sleep  1s
    click button  quick-search-button
    wait until page contains  Create new customer
    click Button  menu-button--menu--1
    wait until page contains  Create new Sky Glass customer
    click element  css=#option-0--menu--1
    wait until page contains  How is the customer contacting us?
    click element  channel-select-id
    click element  css=#channel-select-id > option:nth-child(1)
    Click Button  prospect-channel-overlay-continue-button
    wait until page contains  Device