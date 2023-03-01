*** Settings ***
Library     Selenium2Library
Resource    ../Repository/Check_Encashment_Repository.robot
Resource    ../Repository/CashDeposit_Repository.robot
Library     String
Library     Dialogs

*** Keywords ***
Branch Transaction List Validation
    Open browser                               ${METROBANK_URL}              ${BROWSER_CHROME}
    Maximize Browser Window
    Sleep                                      2s
    Wait until page contains element           ${SELF_SERVICE_LABEL}
    Page should contain element                ${SELF_SERVICE_LABEL}
    Page should contain element                ${SELF_SERVICE_DETAILS1}
    Page should contain element                ${SELF_SERVICE_DETAILS2}
    Page should contain element                ${VIEW_ALL_BUTTON}
    Scroll element into view                   ${BOOK_NOW_BUTTON}
    Page should contain element                ${MAKE_A_BRANCH_TXN_LABEL}
    Page should contain element                ${BOOK_APPOINTMENTS_LABEL}
    Page should contain element                ${BOOK_NOW_BUTTON}
    Click element                              ${BOOK_NOW_BUTTON}

Initiation of Check Encashment Request
    Wait until page contains element          ${Metrobank_Label}
    Sleep                                     3s
    Execute JavaScript                        window.scrollTo(1,600)
    Sleep                                     2s
    Page should contain element               ${Choose_Txn_label}
    Page should contain element               ${CHECK_ENCASHMENT_LABEL}
    Click element                             ${CHECK_ENCASHMENT_LABEL}
    Sleep                                     3s
    Page Should Contain Element               ${BRANCH_TXN_LABEL}
    Element Should Be Visible                 ${X_BUTTON}
    Page Should Contain Element               ${BOOK_APPOINTMENT_LABEL}
    Page Should Contain Element               ${CHECK_ENCASHMENT_LABEL}
    Page Should Contain Element               ${NOTICE_LABEL}
    Element Text Should Be                    ${METROBANK_CHECKS_ONLY_LABEL}            The appointment you are about to book is for\nMetrobank checks only
    Page Should Contain Element               ${PLEASE_NOTE_LABEL}
    Page Should Contain Element               ${PROCEED_BTN_ENCASHMENT}
    Click Element                             ${PROCEED_BTN_ENCASHMENT}
    Sleep                                     3s


Terms & Condition and Data Consent Validation
    Wait until page contains element          ${Branch_transaction_Label}
    Page should contain element               ${X_Button}
    Page should contain element               ${Book_Appointment_Label}
    Page should contain element               ${CHECK_ENCASHMENT_LABEL}
    Page should contain element               ${Summary_Label}
    Page should contain element               ${TandC_Privacy_Policy_Label}
    Page should contain element               ${Here_Is_a_ShortSummary_Label}
    Page should contain element               ${T&C_One_Details}
    Page should contain element               ${T&C_One_Next_Details1}
    Element Text Should Be                    ${T&C_One_Next_Details2}                   You are a Filipino currently residing in the Philippines
    Element Text Should Be                    ${T&C_One_Next_Details3}                   You are at least 18 years old
    Scroll element into view                  ${Privacy_Act_Label}
    ${Get_T&C_Two_Details}                    Get text                                   ${T&C_Two_details}
    Element Text Should Be                    ${T&C_Two_details}                         You agree to maintain a minimum average daily balance (ADB) of P2,000 every month, and will accept a fee of P300 if the ADB does not reach the minimum for 2 consecutive months.
    Page should contain element               ${T&C_Two_Next_Details}
    Page should contain element               ${T&C_Three_Detail1}
    Page should contain element               ${T&C_Three_Detail2}
    Page should contain element               ${T&C_Three_Detail3}
    Scroll element into view                  ${Data_Consent_Label}
    Page should contain element               ${Full_MSA_T&C}
    Page should contain element               ${Full_Account_OpeningT&C}
    Page should contain element               ${Full_Privacy&Policy}
    Sleep                                     3s
    Scroll element into view                  ${Next_Button_T&C}
    Page should contain element               ${Data_Consent_Label}
    Page should contain element               ${Data_Consent_Details1}
    Page should contain element               ${Data_Consent_Details2}
    Page should contain element               ${Full_Data_Consent}
    Page should contain element               ${T&C_Data&Privacy_Checkbox}
    Element Should Contain                    ${T&C_DataPrivacy_Label}                 I agree to Metrobank’s TERMS AND CONDITIONS  and DATA PRIVACY POLICY
    Page should contain element               ${DataConsent_Checkbox}
    Element Text Should Be                    ${DataConsent_Checkbox_Label}            I agree to Metrobank’s DATA CONSENT
    Element Text Should Be                    ${By_CLicking_Next_Label}                By clicking Next, you are allowing Metrobank to process your application using your personal information and data.
    Element Text Should Be                    ${Next_Button_T&C}                       Next

T&C Next Button Validation
    Click element                             ${T&C_Data&Privacy_Checkbox}
    sleep                                     2s
    ${Validate_disabled}=                     Run Keyword And Return Status            Click Element    ${Next_Button_T&C}
    Run Keyword If                            'True'=='${Validate_disabled}'           Passed       "Element should not be clickable"

    Click element                             ${T&C_Data&Privacy_Checkbox}
    Click element                             ${DataConsent_Checkbox}

    ${Validate_disabled}=                     Run Keyword And Return Status            Click Element    ${Next_Button_T&C}
    Run Keyword If                            'True'=='${Validate_disabled}'           Passed       "Element should not be clickable"

    Click element                             ${T&C_Data&Privacy_Checkbox}
    Click element                             ${Next_Button_T&C}
    Sleep                                     3s

View and Navigate to Check Encashment Digital Form
