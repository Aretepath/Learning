*** Settings ***
Resource  ./PO/SkyGlass.robot
Resource  ./PO/CustLookUp.robot
Resource  ./PO/Services.robot
Resource  ./PO/Details.robot
Resource  ./PO/Consent.robot
Resource  ./PO/Payment.robot
Resource  ./PO/Confirmation.robot

*** Variables ***


*** Keywords ***
FrontOfficeApp.CustLookUp.Load Standard prospect Customer
FrontOfficeApp.SkyGlass.Select Sky Glass Products
FrontOfficeApp.SkyGlass.Select All Addons
FrontOfficeApp.Services.Confirm Key Facts
FrontOfficeApp.Services.Confirm Key Facts Addons
FrontOfficeApp.Services.Confirm Additional Key Facts
FrontOfficeApp.Details.Select Marketing Prefrences
FrontOfficeApp.Details.Create Customer Details
FrontOfficeApp.Consent.Confrim the consent
FrontOfficeApp.Consent.Confrim the consent CCA
FrontOfficeApp.Payment.Capture Payment Details
FrontOfficeApp.Confirmation.Confirm Value Small Upfront
FrontOfficeApp.Confirmation.Confirm Value Medium CCA