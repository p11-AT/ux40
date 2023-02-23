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

ID Card Capture - Scenario 2
#Selecting ID from List

    Sleep    2s
    ${browser}  set variable  ${list_Company_ID_Sign}
    Log    ${browser}
    
    Run Keyword If      '${browser}' == '${list_immigrant_COR}'                 Click Element   (${list_radio_button})[1]
    ...  ELSE IF        '${browser}' == '${list_Company_ID_Sign}'               Click Element   (${list_radio_button})[2]
    ...  ELSE IF        '${browser}' == '${list_DL}'                            Click Element   (${list_radio_button})[3]
    ...  ELSE IF        '${browser}' == '${list_Foreign_Passport}'              Click Element   (${list_radio_button})[4]
    ...  ELSE IF        '${browser}' == '${list_GSIS}'                          Click Element   (${list_radio_button})[5]
    ...  ELSE IF        '${browser}' == '${list_Government_Owned_ID}'           Click Element   (${list_radio_button})[6]
    ...  ELSE IF        '${browser}' == '${list_Integrated_Bar_ID}'             Click Element   (${list_radio_button})[7]
    ...  ELSE IF        '${browser}' == '${list_OFW_ID}'                        Click Element   (${list_radio_button})[8]
    ...  ELSE IF        '${browser}' == '${list_PRC_ID}'                        Click Element   (${list_radio_button})[9]
    ...  ELSE IF        '${browser}' == '${list_PWD_ID}'                        Click Element   (${list_radio_button})[10]
    ...  ELSE IF        '${browser}' == '${list_Nat_ID}'                        Click Element   (${list_radio_button})[11]
    ...  ELSE IF        '${browser}' == '${list_PhilPassport_ID}'               Click Element   (${list_radio_button})[12]
    ...  ELSE IF        '${browser}' == '${list_Postal_ID}'                     Click Element   (${list_radio_button})[13]
    ...  ELSE IF        '${browser}' == '${list_PhilHealth_ID}'                 Click Element   (${list_radio_button})[14]
    ...  ELSE IF        '${browser}' == '${list_School_Certification_ID}'       Click Element   (${list_radio_button})[15]
    ...  ELSE IF        '${browser}' == '${list_SSS_ID}'                        Click Element   (${list_radio_button})[16]
    ...  ELSE IF        '${browser}' == '${list_School_ID}'                     Click Element   (${list_radio_button})[17]
    ...  ELSE IF        '${browser}' == '${list_Seafarer_Doc_ID}'               Click Element   (${list_radio_button})[18]
    ...  ELSE IF        '${browser}' == '${list_Seaman_Book_ID}'                Click Element   (${list_radio_button})[19]
    ...  ELSE IF        '${browser}' == '${list_Senior_Citizen_ID}'             Click Element   (${list_radio_button})[20]
    ...  ELSE IF        '${browser}' == '${list_UMID_ID}'                       Click Element   (${list_radio_button})[21]
    ...  ELSE IF        '${browser}' == '${list_Voter_ID}'                      Click Element   (${list_radio_button})[22]

    Sleep    4s
    Click Element    ${select_button}
    Sleep    5s

Upload Photo Non Jumio ID
    Click Element    ${UploadPhoto_NonJumio_btn}
    Sleep    2s
#   Check Upload Front ID Intro
    Element Should Be Visible               ${ChooseFile_NonJumio_Text_1}
    Sleep                                   2s
    Element Should Be Visible               ${ChooseFile_NonJumio_Text_2}
    Sleep                                   2s
    Element Should Be Visible               ${ChooseFile_NonJumio_Back_Btn}
    Sleep                                   2s
    Choose File                             ${ChooseFile_NonJumio_btn}    C://Users//KatrinaTandogconsult//Desktop//Diff_Image_Filetype//CompID_jpg_front.jpg
    Sleep    5s

#   Review Upload-Front ID
    Element Text Should Be              ${NonJumio_Review_Text_1}    Review your ID Front
    Element Should Be Visible           ${NonJumio_Review_Text_2}
    Element Should Be Visible           ${NonJumio_TryAgain_Btn}
    Element Should Be Visible           ${NonJumio_Continue_Btn}
    Sleep                               4s
    Click Button                        ${NonJumio_Continue_Btn}

#   Upload-Back ID
    Sleep                               2s






