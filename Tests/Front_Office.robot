*** Settings ***
Documentation  Talk about what this suite of tests does
Library  SeleniumLibrary
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/FrontOfficeApp.robot
Test Setup  Start Web
Test Teardown  Close Web

# robot -d results tests/Front_Office.robot
# robot -d results -N "Sell Sky Glass" tests/Front_Office.robot
# robot -d results -i Client -i Sky_Glass_Sale -N "Sell Sky Glass" tests/Front_Office.robot
# robot -d results -i Sky_Glass_Sale -N "Sell Sky Glass" tests/Front_Office.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://dthing01u01.bskyb.com/residential/?channel=DIRECT
${Username}  rcl47
${Password}  Sup3rm4n
${SPS_ID} = xpath=//*[@id="body-shop-content"]/div[3]

*** Test Cases ***
User Must Login Successfully
    [Documentation]  User must log in using user name and password
    [Tags]  Client
    Log In to Client
    Log  Agent has logged into the client successfully

User Must Select Sky Glass Products
    [Documentation]  User must start a glass prospect journey Standard
    [Tags]  Sky_Glass_Products
    log  The purpose of this test is to submit a prospect Sky Glass Customer
    Log In to Client
    Load Standard prospect Customer
    Select Sky Glass Products
    Log  Agent has chosen Sky Glass products Succesfully

User Must Select Sky Glass Key Facts
    [Documentation]  User must Select the Sky Glass Key Facts
    [Tags]  Sky_Glass_Products
    log  The purpose of this test is to Verify the Key Facts for a prospect Sky Glass Customer
    Log In to Client
    Load Standard prospect Customer
    Select Sky Glass Products
    Select Marketing Prefrences
    Log  Agent has chosen Sky Glass Key Facts Succesfully

User Must Confirm Marketing Preferences for a Glass Sale
    [Documentation]  User must confirm Marketing Preferences for a glass prospect journey Standard
    [Tags]  Sky_Glass_Marketing
    log  The purpose of this test is to submit a prospect Sky Glass Customer
    Log In to Client
    Load Standard prospect Customer
    Select Sky Glass Products
    Confirm Key Facts
    Select Marketing Prefrences
    log  Agent confirms marketing preferences

User Must Create new Customer Details
    [Documentation]  User must Create new customer details for a glass prospect journey Standard
    [Tags]  Sky_Glass_Details
    log  The purpose of this test is to submit a prospect Sky Glass Customer
    Log In to Client
    Load Standard prospect Customer
    Select Sky Glass Products
    Confirm Key Facts
    Select Marketing Prefrences
    Create Customer Details
    log  User creates new customer details successfully


User Must Submit a Prospect Glass Sale
    [Documentation]  User must Submit a glass prospect journey Standard
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
    log  Sky Glass Prospect Customer submitted succesfully for upfront Payment



