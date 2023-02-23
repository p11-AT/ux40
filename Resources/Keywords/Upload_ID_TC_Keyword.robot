*** Settings ***
Library  Selenium2Library
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
    Page Should Contain Element

ID Card Capture - Scenario 2
#Selecting ID from List

    Sleep    2s
    ${browser}  set variable  ${list_Company_ID_Sign}
    Log    ${browser}
    
    Run Keyword If    '${browser}' == '${list_immigrant_COR}'           Click Element   (${list_radio_button})[1]
    ...  ELSE IF    '${browser}' == '${list_Company_ID_Sign}'           Click Element   (${list_radio_button})[2]
    ...  ELSE IF    '${browser}' == '${list_Foreign_Passport}'          Click Element   (${list_radio_button})[3]
    ...  ELSE IF    '${browser}' == '${list_GSIS}'                      Click Element   (${list_radio_button})[4]

    Click Element    ${select_button}



