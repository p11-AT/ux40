*** Settings ***
Library  Selenium2Library
Resource    ../../Resources/Repository/Upload_ID_Repo.robot
Resource    ../../Resources/Keywords/Upload_ID_TC_Keyword.robot

*** Test Cases ***

Check Identity Verification Intro Page
    Open Browser - Chrome       ${IDSELECT_URL}      chrome
    ID Card Capture - Scenario 1

Check ID List
    Validate list

Selecting ID from the list
    ID Card Capture - Scenario 2
