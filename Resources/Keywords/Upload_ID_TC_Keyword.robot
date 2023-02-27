*** Settings ***
Library     Selenium2Library
Resource    ../../Resources/Repository/Upload_ID_Repo.robot

*** Keywords ***
Open Browser - Chrome
    [Arguments]     ${BROWSER_URL}      ${BROWSER}
    open browser                ${BROWSER_URL}      ${BROWSER}
    maximize browser window

ID Card Capture - Scenario 1
#Check elements in Identity Verification
    Sleep                                   2s
    Element Should Be Visible               ${IDVerification_Header}
    Element Should Be Visible               ${IDVerification_Title_1}
    Element Should Be Visible               ${IDVerification_Title_2}
    Element Should Be Visible               ${Subtext_1}
    Element Should Be Visible               ${Subtext_2}
    Element Should Be Visible               ${Subtext_3}
    Element Should Be Visible               ${ChooseID_Label}
    Element Should Be Visible               ${ChooseID_Dropdown}
    Sleep                                   5s


Validate list
    Click Element                           ${ChooseID_Listbox}
    Page Should Contain Element             ${label_immigrant_COR}

ID Card Capture - Select Non Jumio Supported ID
#Selecting ID from List

    Sleep    2s
    ${browser}  set variable  ${list_Company_ID_Sign}
    Log    ${browser}
    
    Run Keyword If      '${browser}' == '${list_immigrant_COR}'                 Click Element   (${list_radio_button})[1]
    ...  ELSE IF        '${browser}' == '${list_Company_ID_Sign}'               Click Element   (${list_radio_button})[2]
    ...  ELSE IF        '${browser}' == '${list_Foreign_Passport}'              Click Element   (${list_radio_button})[4]
    ...  ELSE IF        '${browser}' == '${list_GSIS}'                          Click Element   (${list_radio_button})[5]
    ...  ELSE IF        '${browser}' == '${list_Government_Owned_ID}'           Click Element   (${list_radio_button})[6]
    ...  ELSE IF        '${browser}' == '${list_Integrated_Bar_ID}'             Click Element   (${list_radio_button})[7]
    ...  ELSE IF        '${browser}' == '${list_OFW_ID}'                        Click Element   (${list_radio_button})[8]
    ...  ELSE IF        '${browser}' == '${list_PWD_ID}'                        Click Element   (${list_radio_button})[10]
    ...  ELSE IF        '${browser}' == '${list_PhilHealth_ID}'                 Click Element   (${list_radio_button})[14]
    ...  ELSE IF        '${browser}' == '${list_School_Certification_ID}'       Click Element   (${list_radio_button})[15]
    ...  ELSE IF        '${browser}' == '${list_School_ID}'                     Click Element   (${list_radio_button})[17]
    ...  ELSE IF        '${browser}' == '${list_Seafarer_Doc_ID}'               Click Element   (${list_radio_button})[18]
    ...  ELSE IF        '${browser}' == '${list_Seaman_Book_ID}'                Click Element   (${list_radio_button})[19]
    ...  ELSE IF        '${browser}' == '${list_Senior_Citizen_ID}'             Click Element   (${list_radio_button})[20]

    Sleep    3s
    Click Element    ${select_button}
    Sleep    3s

Upload Photo Non Jumio ID
    Click Element                           ${UploadPhoto_NonJumio_btn}
    Sleep                                   2s
#   Check Upload Front ID Intro
    Element Should Be Visible               ${ChooseFile_NonJumio_Text_1}
    Sleep                                   2s
    Element Should Be Visible               ${ChooseFile_NonJumio_Text_2}
    Sleep                                   2s
    Element Should Be Visible               ${ChooseFile_NonJumio_Back_Btn}
    Sleep                                   2s
#    Upload Front ID
    Choose File                             ${ChooseFile_NonJumio_btn}    C://Users//KatrinaTandogconsult//Desktop//Diff_Image_Filetype//CompID_jpg_front.jpg
    Sleep    5s

#   Review Upload-Front ID
    Element Text Should Be              ${NonJumio_Review_Text_1}    Review your ID Front
    Element Should Be Visible           ${NonJumio_Review_Text_2}
    Element Should Be Visible           ${NonJumio_TryAgain_Btn}
    Element Should Be Visible           ${NonJumio_Continue_Btn}
    Sleep                               4s
    Click Element                       ${NonJumio_Continue_Btn}

#   Upload-Back ID Intro
    Sleep                           4s
    Element Should Be Visible       ${ChooseFile_NonJumioBack_Text_1}
    Sleep                           2s
    Element Should Be Visible       ${ChooseFile_NonJumioBack_Text_2}
    Sleep                           2s
    Element Text Should Be          ${ChooseFile_NonJumioBack_Text_3}    Upload a color image of the entire document. Screenshots are not allowed. JPG, JPEG or PNG format only.\n\nMake sure it shows your clear signature (if applicable).
    Sleep                           2s
#    Upload Back ID
    Choose File                     ${ChooseFile_NonJumio_btn}    C://Users//KatrinaTandogconsult//Desktop//Diff_Image_Filetype//CompID_jpg_back.jpg
    Sleep                           5s

#   Review Upload-Back ID
    Element Text Should Be              ${NonJumio_Review_Text_1}    Review your ID Back
    Element Should Be Visible           ${NonJumio_Review_Text_2}
    Element Should Be Visible           ${NonJumio_TryAgain_Btn}
    Element Should Be Visible           ${NonJumio_Continue_Btn}
    Sleep                               4s
    Click Element                       ${NonJumio_Continue_Btn}
    Sleep                               4s
    Close Browser

ID Card Capture - Select Jumio Supported ID
    Sleep    2s
    ${browser}  set variable  ${list_DL}
    Log    ${browser}

    Run Keyword If      '${browser}' == '${list_DL}'                            Click Element   (${list_radio_button})[3]
    ...  ELSE IF        '${browser}' == '${list_PRC_ID}'                        Click Element   (${list_radio_button})[9]
    ...  ELSE IF        '${browser}' == '${list_Nat_ID}'                        Click Element   (${list_radio_button})[11]
    ...  ELSE IF        '${browser}' == '${list_PhilPassport_ID}'               Click Element   (${list_radio_button})[12]
    ...  ELSE IF        '${browser}' == '${list_Postal_ID}'                     Click Element   (${list_radio_button})[13]
    ...  ELSE IF        '${browser}' == '${list_SSS_ID}'                        Click Element   (${list_radio_button})[16]
    ...  ELSE IF        '${browser}' == '${list_UMID_ID}'                       Click Element   (${list_radio_button})[21]
    ...  ELSE IF        '${browser}' == '${list_Voter_ID}'                      Click Element   (${list_radio_button})[22]

    Sleep    3s
    Click Element    ${select_button}
    Sleep    3s

Upload Photo - Jumio Supported ID Intro
    Click Button                        ${JumioSupported_Proceed_Btn}
    Sleep                               20s
    Select Frame                        ${JumioSupported_Frame}
    Sleep                               5s
    Element Text Should Be              ${JumioSupported_Upload_Btn}            Upload file from this device
    Sleep                               5s
    Click Element                       ${JumioSupported_Upload_Btn}
    Sleep                               10s
    Element Text Should Be              ${JumioSupported_Upload_Title}          Upload front of identity card
    Sleep                               3s
    Element Text Should Be              ${JumioSupported_Upload_Sub_Text_1}     Step 1 of 3
    Sleep                               3s
    Element Text Should Be              ${JumioSupported_Upload_Sub_Text_2}     Upload a color image of the entire document. Screenshots are not allowed. JPG, JPEG or PNG format only.
    Sleep                               3s

Upload Photo - Jumio Supported ID - JPG file
    Choose File                         ${ChooseFile_NonJumio_btn}              C://Users//KatrinaTandogconsult//Desktop//Diff_Image_Filetype//DLFront_jpg.jpg
    Sleep                               20s

Review Uploaded Photo -Jumio Supported ID - Front
    Wait Until Element Is Visible       ${JumioSupported_Upload_Review_Area}            10s
    Sleep    5s
    Scroll Element Into View            ${JumioSupported_Upload_Confirm}
    Sleep    3s
    Element Should Be Visible           ${JumioSupported_Upload_Tooltip}
    Sleep    2s
    Click Element                       ${JumioSupported_Upload_Tooltip}
    Sleep    3s
    Click Element                       ${JumioSupported_Upload_Tooltip_Close}
    Sleep    2s
    Element Text Should Be              ${JumioSupported_Upload_Review_Title}             Check photo
    Sleep    2s
    Element Text Should Be              ${JumioSupported_Upload_Review_Text_1}            Have you checked if your ID is supported?
    Sleep    2s
    Element Text Should Be              ${JumioSupported_Upload_Review_Text_2}            Can you read the details?
    Sleep    2s
    Element Text Should Be              ${JumioSupported_Upload_Review_Text_3}            Can you see the whole ID?
    Sleep    2s
    Element Should Be Visible    ${JumioSupported_Upload_TryAgain}
    Sleep    2s
    Element Should Be Visible    ${JumioSupported_Upload_Confirm}
    Sleep    2s
    Click Element    ${JumioSupported_Upload_Confirm}
    Sleep    5s
    Close Browser









