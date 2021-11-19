*** Settings ***
Resource  ./PO/SkyGlass.robot
Resource  ./PO/CustLookUp.robot
Resource  ./PO/Services.robot
Resource  ./PO/Details.robot
Resource  ./PO/Consent.robot
Resource  ./PO/Payment.robot

*** Variables ***


*** Keywords ***
FrontOfficeApp.CustLookUp.Load Standard prospect Customer
FrontOfficeApp.SkyGlass.Select Sky Glass Products
FrontOfficeApp.Services.Confirm Key Facts
FrontOfficeApp.Details.Select Marketing Prefrences
FrontOfficeApp.Details.Create Customer Details
FrontOfficeApp.Consent.Confrim the consent
FrontOfficeApp.Payment.Capture Payment Details
