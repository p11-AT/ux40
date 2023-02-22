*** Settings ***
Library  Selenium2Library
Resource    ../../Resources/Variables/Upload_ID_Repo.robot
Resource    ../../Resources/Keyword/Upload_ID_TC_Keyword.robot

*** Test Cases ***

Check Identity Verification Intro Page
    Open Browser - Chrome       ${IDSELECT_URL}      chrome
    Identity Verification: ID Card Capture - Scenario 1