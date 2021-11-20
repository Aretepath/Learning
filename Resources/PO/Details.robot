*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Details_Firstname}  Richard
${Details_Lastname}  Clark-soipleave
${Details_Email}  rcautomation@sky.uk
${Details_Mobile}  07777777777
${Details_Day}  01
${Details_Month}  09
${Details_Year}  1990
${Details_Postcode}  Eh547hg

*** Keywords ***
Select Marketing Prefrences
    wait until page contains  To be read word for word
    sleep  2s
    click element  xpath=//*[@id="marketing-preferences-radio-id-OPTED_IN-label"]
    Sleep  1s

Create Customer Details
    wait until page contains  Customer details
    select from list by label  select-title-id  Mr
    input text  xpath=//*[@id="first-name-input-id"]  ${Details_Firstname}
    input text  xpath=//*[@id="last-name-input-id"]  ${Details_Lastname}
    input text  xpath=//*[@id="email-address-input-id-two"]  ${Details_Email}
    input text  xpath=//*[@id="confirm-email-address-input-id-two"]  ${Details_Email}
    input text  xpath=//*[@id="mobile-number-input-id"]  ${Details_Mobile}
    input text  xpath=//*[@id="date-of-birth-input-id-day"]  ${Details_Day}
    input text  xpath=//*[@id="date-of-birth-input-id-month"]  ${Details_Month}
    input text  xpath=//*[@id="date-of-birth-input-id-year"]  ${Details_Year}
    input text  xpath=//*[@id="postcode-address"]  ${Details_Postcode}
    click button  search-address
    sleep  2s
    click element  xpath=//*[@id="address-search-item-uprn135027254-index0"]
    wait until page contains  Confirm Address
    click button  confirm-customer-address-button
    wait until page contains  TV hardware will be delivered to:
    Sleep  4s
    click element  xpath=//*[@id="slot-0-0"]/div
    Sleep  1s
    click button  basket-bar-consent-button
    wait until page contains  Is the customer happy for us to use their details for this purpose?

#https://www.youtube.com/watch?v=nRF53mUIceQ