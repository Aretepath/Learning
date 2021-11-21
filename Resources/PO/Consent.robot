*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Confrim the consent
    Sleep  2s
    click element  xpath=//*[@id="use-details-question-true-label"]
    wait until page contains  Has the customer lived at their address for the last 3 years?
    click element  xpath=//*[@id="previous-address-required-question-true-label"]
    Sleep  1s
    click button  confirm-affordability-check
    wait until page contains  The customer has been approved to proceed with purchase

Confrim the consent CCA
    Sleep  2s
    click element  xpath=//*[@id="use-details-question-true-label"]
    wait until page contains  Has the customer lived at their address for the last 3 years?
    click element  xpath=//*[@id="previous-address-required-question-true-label"]
    Sleep  1s
    click button  confirm-affordability-check
    wait until page contains  The customer has been approved for the credit agreement
