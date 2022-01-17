*** Settings ***
Documentation  Talk about what this suite of tests does
Library  SeleniumLibrary
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/FrontOfficeApp.robot
Test Setup  Start Web
Test Teardown  Close Web


# robot -d results -v URL=https://dthing01e03.bskyb.com/residential/?channel=DIRECT -i Sky_Glass_Sale -N "Sell Sky Glass UFP" tests/Front_Office.robot
# robot -d results -i UFP -N "Sell Sky Glass Upfront Payment" tests/Front_Office.robot
# robot -d results -i CCA -N "Sell Sky Glass Credit Card Agreement" tests/Front_Office.robot
# robot -d results -i CCA -v URL:https://dthing01u01.bskyb.com/residential/?channel=DIRECT -N "Sell Sky Glass UFP" tests/Front_Office.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =
${U01} =  https://dthing01u01.bskyb.com/residential/?channel=DIRECT
${E03} =  https://dthing01e03.bskyb.com/residential/?channel=DIRECT
${Username}  rcl47automation
${Password}  Sup3rm4n

*** Test Cases ***
User Must Submit a Prospect Glass Sale
    [Documentation]  User must Submit a glass Upfront Payment Small (prospect)
    [Tags]  UFP
    Given Log In to Client
    and Load Standard prospect Customer
    and Select Sky Glass Products
    and Confirm Key Facts
    and Select Marketing Prefrences
    and Create Customer Details
    and Confrim the consent
    When Capture Payment Details
    Then Confirm Value Small Upfront
    log  Sky Glass Prospect Customer submitted succesfully for upfront Payment

User Must Submit a Prospect Glass Sale with Addons
    [Documentation]  User must Submit a glass CCA Payment Small (prospect)
    [Tags]  CCA
    log  The purpose of this test is to submit a prospect Sky Glass Customer with all the addons
    Given Log In to Client
    and Load Standard prospect Customer
    and Select All Addons
    and Confirm Key Facts Addons
    and Select Marketing Prefrences
    and Create Customer Details
    and Confrim the consent CCA
    and Confirm Additional Key Facts
    when Capture Payment Details
    then Confirm Value Medium CCA
    log  Sky Glass Prospect Customer submitted succesfully for CCA Payment with all Addons



