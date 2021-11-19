*** Settings ***
Documentation  Talk about what this suite of tests does
Library  SeleniumLibrary
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/FrontOfficeApp.robot
Test Setup  Start Web
Test Teardown  Close Web

# robot -d results tests/Front_Office.robot
# robot -d results -N "Sell Sky Glass" results tests/Front_Office.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://dthing01u01.bskyb.com/residential/?channel=DIRECT
${Username}  rcl47
${Password}  Sup3rm4n

*** Test Cases ***
#User Must Login SUccessfully
#    [Documentation]  User must log in using user name and password
  #  Log In to Client

User Must Start Prospect Glass Sale
    [Documentation]  User must start a glass prospect journey Standard
    [Tags]  Sky Glass Sale
    Log In to Client
    Load Standard prospect Customer
    Select Sky Glass Products
    Confirm Key Facts
    Select Marketing Prefrences
    Create Customer Details
    Confrim the consent
    Capture Payment Details


