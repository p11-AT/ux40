*** Settings ***
Library  Selenium2Library
Documentation     A test suite for Cash Deposit.
#Resource          ../../Resources/Page_Resources/CashDeposit_Repository.robot
Resource          ../Keywords/CashDeposit_Keywords.robot
Library           String
Library           Collections
Library           OperatingSystem
Library           Process
Library           DateTime

Suite Teardown      Close All Browsers
*** Test Cases ***
MBTC Website - Branch Transaction List
    Branch Transaction List Validation

Initiation of Cash Deposit Request
    Initiation of Cash Deposit Request

View and navigate to Terms and condition
    Terms & Condition and Data Consent Validation

T&C Next Button Validation
    T&C Next Button Validation

View and Navigate to Cash Deposit Digital Form
    View and Navigate to Cash Deposit Digital Form

Digital Form Error Message Validation
    Digital Form Error Message Validation

Digital Form Input Validation
    Digital Form Input Validation

Count the number of Business Enabled Dates
    Date of Transaction Validation

Digital Form Happy Path
    Digital Form Happy Path

Service Fee Modal Validation
    Service Fee Modal Validation

Click Go Back to Form
    Click Go Back to Form

Click Continue Button
    Click Continue Button

Submission of cash deposit details (Transaction Summary)
    View and Navigate to Review Screen

Transaction Summary Data Validation
    Customer Input Data Validation

Transaction Summary with Email Address
    Review Details with Email Address

Transaction Summary without Email Address
    Review Details without Email Address

Edit Customer Details
    Click Edit Details Button

Confirmation Screen Validation
    View and Navigate to Transaction Confirmation Screen

Confirmation Screen Data Validation
    Confirmation Screen Data Validation

Click Book a new Transaction button
    Click Book a new Transaction button
