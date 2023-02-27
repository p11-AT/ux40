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

Selecting ID from the list (Non-Jumio Supported ID)
    ID Card Capture - Select Non Jumio Supported ID

Upload photo from photo library : Non-Jumio Supported ID (Front and Back)
    Upload Photo Non Jumio ID

Check Identity Verification Intro Page
    Open Browser - Chrome       ${IDSELECT_URL}      chrome
    ID Card Capture - Scenario 1

Check ID List
    Validate list

Selecting ID from the list (Jumio Supported ID)
    ID Card Capture - Select Jumio Supported ID

#   Check Upload - Jumio Supported ID intro page
Upload Photo Jumio ID
    Upload Photo - Jumio Supported ID Intro

#   Upload photo - JPG File
Upload Photo_Jumio Supported ID_JPG file
    Upload Photo - Jumio Supported ID - JPG file

#   Review Uploaded Photo - Front
Upload Photo_Review Uploaded Photo
    Review Uploaded Photo -Jumio Supported ID - Front

#   Check Upload - Jumio Supported ID intro page
