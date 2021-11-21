*** Settings ***
Documentation  Talk about what this suite of tests does
Library  SeleniumLibrary
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/FrontOfficeApp.robot
Test Setup  Start Web
Test Teardown  Close Web

# robot -d results tests/Front_Office.robot
# robot -d results -N "Sell Sky Glass" tests/Front_Office.robot
# robot -d results -i Sky_Glass_Sale -N "Sell Sky Glass" tests/Front_Office.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://dthing01u01.bskyb.com/residential/?channel=DIRECT
${Username}  rcl47
${Password}  Sup3rm4n
${SPS_ID} = xpath=//*[@id="body-shop-content"]/div[3]

*** Test Cases ***
User Must Submit a Prospect Glass Sale
    [Documentation]  User must Submit a glass Upfront Payment Small (prospect)
    [Tags]  Sky_Glass_Sale
    log  The purpose of this test is to submit a prospect Sky Glass Customer
    Log In to Client
    Load Standard prospect Customer
    Select Sky Glass Products
    Confirm Key Facts
    Select Marketing Prefrences
    Create Customer Details
    Confrim the consent
    Capture Payment Details
    Confirm Value Small Upfront
    log  Sky Glass Prospect Customer submitted succesfully for upfront Payment

User Must Submit a Prospect Glass Sale with Addons
    [Documentation]  User must Submit a glass CCA Payment Small (prospect)
    [Tags]  Sky_Glass_Addons_CCA
    log  The purpose of this test is to submit a prospect Sky Glass Customer with all the addons
    Log In to Client
    Load Standard prospect Customer
    Select All Addons
    Confirm Key Facts Addons
    Select Marketing Prefrences
    Create Customer Details
    Confrim the consent CCA
    Confirm Additional Key Facts
    Capture Payment Details
    Confirm Value Medium CCA
    log  Sky Glass Prospect Customer submitted succesfully for CCA Payment with all Addons



