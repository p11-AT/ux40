*** Settings ***
Library  Selenium2Library
Resource    ../../Resources/Variables/Upload_ID_Repo.robot

*** Keywords ***
Open Browser - Chrome
    [Arguments]     ${BROWSER_URL}      ${BROWSER}
    open browser                ${BROWSER_URL}      ${BROWSER}
    maximize browser window

Identity Verification: ID Card Capture - Scenario 1
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
#Check list of ID's in the dropdown
    Click Element                           ${ID_Dropdown_Frame}
    Sleep                                   2s
    Execute JavaScript          window.scrollTo(0,300)
    Sleep                                   5s
    Close Browser

