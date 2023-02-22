*** Settings ***
Library  Selenium2Library
Resource    ../../Resources/Variables/CIFLite_Repo.robot
Resource    ../../Resources/Keyword/CIF_Lite_TC_Keyword.robot

*** Test Cases ***

CIF Lite : No Middle Name
    Open Browser - Chrome       ${CIFLITE_URL}      chrome
    CIF Lite: Preliminary Info - Scenario 1

CIF Lite : Invalid Entries
    Open Browser - Chrome       ${CIFLITE_URL}      chrome
    CIF Lite: Preliminary Info - Scenario 2

Contact Details Page
        Open Browser - Chrome           ${CONTACTDETAILS_URL}      chrome
        Check Contact Details Page

Check Mobile OTP Verification Page
        Mobile OTP Verification Page

Mobile OTP Verification
    wait until element is enabled   ${numeric_input}            ${WAIT_LONG}
    ENTER OTP

    sleep  4s

Check Email Address OTP Verification Page
    Email OTP Verification Page

Email OTP Verification
    wait until element is enabled   ${numeric_input}            ${WAIT_LONG}
    ENTER OTP

    sleep  4s

CIF Lite : Supplies Basic Information
    CIF Lite: Preliminary Info - Scenario 3

 CIF Lite Processing : Reference Number
