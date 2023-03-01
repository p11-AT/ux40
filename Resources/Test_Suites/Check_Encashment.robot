*** Settings ***
Library  Selenium2Library
Documentation     A test suite for Cash Deposit.
#Resource          ../../Resources/Page_Resources/CashDeposit_Repository.robot
Resource          ../Keywords/Check_Encashment_Keywords.robot
Library           String
Library           Collections
Library           OperatingSystem
Library           Process
Library           DateTime


Suite Teardown      Close All Browsers

*** Test Cases ***
MBTC Website - Branch Transaction List
    Branch Transaction List Validation

Selecting Check Encashment Transaction
    Initiation of Check Encashment Request

View and Navigate to CT Terms and Condition
    Terms & Condition and Data Consent Validation

T&C Next Button Validation
    T&C Next Button Validation