*** Settings ***
Library  Selenium2Library
Resource    ../../Resources/Repository/Upload_ID_Repo.robot
Resource    ../../Resources/Keywords/Upload_ID_TC_Keyword.robot

*** Test Cases ***

Check Identity Verification Intro Page
    [Documentation]
    ...     Open Browser to Identity Verification Intro Page
    ...     Check elements in Identity Verification
    Open Browser - Chrome       ${IDSELECT_URL}      chrome
    ID Card Capture - Scenario 1

Check ID List
    [Documentation]
    ...     Validate IDs in the list
    Validate list

Selecting ID from the list (Non-Jumio Supported ID)
    [Documentation]
    ...     Select a Non-Jumio Supported ID from the list
    ID Card Capture - Select Non Jumio Supported ID

Upload photo from photo library : Non-Jumio Supported ID (Front and Back)
    [Documentation]
    ...     Uploading a Non-Jumio Supported ID - Front and Back
    Upload Photo Non Jumio ID

Check Identity Verification Intro Page
    [Documentation]
    ...     Reopening new browser : Identity Verification Intro Page for the uploading of Jumio Supported ID
    ...     Open Browser to Identity Verification Intro Page
    ...     Check elements in Identity Verification
    Open Browser - Chrome       ${IDSELECT_URL}      chrome
    ID Card Capture - Scenario 1

Check ID List
    [Documentation]
    ...     Validate IDs in the list
    Validate list

Selecting ID from the list (Jumio Supported ID)
    [Documentation]
    ...     Selecting a Jumio Supported ID
    ID Card Capture - Select Jumio Supported ID

#   Check Upload - Jumio Supported ID intro page
Upload Photo Jumio ID (Intro - Front)
    [Documentation]
    ...     Checking Upload : Jumio Supported ID intro page
    Upload Photo - Jumio Supported ID Intro - Front

#   Upload photo - JPG File
Upload Photo_Jumio Supported ID_JPG file (Front)
    [Documentation]
    ...     Choosing .jpg file
    Upload Photo - Jumio Supported ID - JPG file - Front

#   Review Uploaded Photo - Front
Upload Photo_Review Uploaded Photo
    [Documentation]
    ...     Review uploaded .jpg file
    Review Uploaded Photo -Jumio Supported ID

#   Check Upload - Jumio Supported ID intro page
Upload Photo Jumio ID (Intro - Back)
    [Documentation]
    ...     Check Upload - Jumio Supported ID intro page
    Upload Photo - Jumio Supported ID Intro - Back

Upload Photo_Jumio Supported ID_JPG file (Back)
    Upload Photo - Jumio Supported ID - JPG file - Back
    Review Uploaded Photo -Jumio Supported ID

