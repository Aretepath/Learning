*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SPSID}  css=#body-shop-content > div.text-sm.text-center.text-neutral-500.pt-2

*** Keywords ***
Confirm Value Small Upfront
    wait until page contains  649.00
    Get Text  ${SPSID}

Confirm Value Medium CCA
    wait until page contains  130.00
    Get Text  ${SPSID}