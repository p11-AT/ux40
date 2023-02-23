*** Settings ***
Library     Selenium2Library
Resource    ../Repository/CashDeposit_Repository.robot
Library     String
Library     Dialogs

*** Keywords ***
Branch Transaction List Validation
    Open browser                               ${metrobank_Url}             ${BROWSER_CHROME}
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

Initiation of Cash Deposit Request
    Wait until page contains element          ${Metrobank_Label}
    Sleep                                     3s
    Execute JavaScript                        window.scrollTo(1,600)
    Sleep                                     2s
    Page should contain element               ${Choose_Txn_label}
    Page should contain element               ${Cash_Deposit_Label}
    Click element                             ${Cash_Deposit_Label}
    Sleep                                     3s

Terms & Condition and Data Consent Validation
    Wait until page contains element          ${Branch_transaction_Label}
    Page should contain element               ${X_Button}
    Page should contain element               ${Book_Appointment_Label}
    Page should contain element               ${Cash_Deposit_Label}
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

View and Navigate to Cash Deposit Digital Form
    Wait until page contains element          ${Branch_transaction_Label}
    Page should contain element               ${X_Button}
    Page should contain element               ${Book_Appointment_Label}
    Page should contain element               ${Cash_Deposit_Label}
    Page should contain element               ${Cash_Deposit_Details}
    Page should contain element               ${Provide_The_Details_Label}
    Page should contain element               ${Depositor_Contact_Details}
    Element Text Should Be                    ${Depositor_Contact_Details1}          The depositor is the one who will be present in the branch to make the cash deposit transaction.\n\nWe will send your booking confirmation and status to the contact details you will provide below.
    Element Text Should Be                    ${Depositors_MobileNumber_Label}       Depositor’s Mobile Number\n*
    Element should be visible                 ${Depositors_MobileNumber_textfield}
    Element should be visible                 ${Mobile_Number_Phil_Icon}
    Element should be visible                 ${Mobile_Number_Label}
    Execute JavaScript                        window.scrollTo(1,400)
    Page should contain element               ${Depositors_Email_Address_Label}
    Element should be visible                 ${Email_Address_Textfield}
    Page should contain element               ${Apointment_Details_Label}
    Page should contain element               ${Choose_WhereandWhen_Label}
    Element Text Should Be                    ${Choose_a_Branch_Label}               Choose a branch\n*
    Page should contain element               ${Branches_Limited_Label}
    Element should be visible                 ${Brach_Dropdown}
    Click element                             ${Brach_Dropdown}
    Page should contain element               ${Branch_option_Paseo}
    Page should contain element               ${Branch_option_Legazpi}
    Page should contain element               ${branch_option_libertad}
    
    Sleep                                     2s
#    Click element                             ${Branch_option_Legazpi}
    Press keys                                None                                      ESC
    Element Text Should Be                    ${Appointment_Date_Label}                 Appointment Date\n*
    Page should contain element               ${You_canSet_your_label}
    Execute JavaScript                        window.scrollTo(1,1000)
    Element should be visible                 ${Calender_DatePicker}
    Click element                             ${Date_Picker}
    Sleep                                     5s
#    Press keys                                None                                  ESC
#    Click element                             ${Select_AppointmentDate}
    ${Date_Count}                             Get element count                         ${DATE_PICKER_DATE}
    Page should contain element               ${Deposit_Details_label}
    Element Text Should Be                    ${Account_Number_Label}                   Account Number\n*
    Element should be visible                 ${Account_Number_Textfield}
    Element Text Should Be                    ${Account_Name_Label}                     Account Name\n*
    Element should be visible                 ${Account_Name_Textfield}
    Element Text Should Be                    ${Amount_to_Deposit_Label}                Amount to Deposit\n*
    Page should contain element               ${PHP_Currency_Label}
    Element should be visible                 ${Amount_Textfield}
    Click element                             ${PHP_Currency_Label}
    Sleep                                     2s
    Page should contain element               ${Option_Php_Currency}
    Page should contain element               ${Option_USD_Currency}
    Page should contain element               ${Option_GBP_Currency}
    Page should contain element               ${Option_CAD_Currency}
    Page should contain element               ${Option_RMB_Currency}
    Page should contain element               ${Option_AUD_Currency}
    Page should contain element               ${Option_SGD_Currency}
    Click element                             ${Option_AUD_Currency}
    Page should contain element               ${Digital_Form_NextBtn}

Digital Form Error Message Validation
    Scroll element into view                  ${Depositors_MobileNumber_Label}
    Sleep                                     3s
    Input text                                ${Depositors_MobileNumber_textfield}          945558770
    Page should contain element               ${Mobile_Error_Message}
    Input text                                ${Email_Address_Textfield}                    Automation@gmail
    Page should contain element               ${Email_Address_Error_Msg}
    Click element                             ${Brach_Dropdown}
    Click element                             ${Branches_Limited_Label}
    Page should contain element               ${Global_Error_Msg}
    Execute JavaScript                        window.scrollTo(1,900)
    Sleep                                     2s
    Page should contain element               ${AppointmentDate_Error_Msg}
    Input text                                ${Account_Number_Textfield}                   9998887878
    Page should contain element               ${Account_Number_Error_Msg}
    Input text                                ${Account_Name_Textfield}                     Rye
    Sleep                                     2s
    Press Keys                                ${Account_Name_Textfield}                     CTRL+a      BACKSPACE
    Page should contain element               ${Account_Name_Error_Msg}
    Sleep                                     2s
    Execute JavaScript                        window.scrollTo(1,900)
    Input text                                ${Amount_Textfield}                           999999999999999.99
    Sleep                                     5s

Digital Form Input Validation
    Press Keys                                ${Account_Name_Textfield}                     CTRL+a      BACKSPACE
    Press Keys                                ${Email_Address_Textfield}                    CTRL+a      BACKSPACE
    Press Keys                                ${Account_Number_Textfield}                   CTRL+a      BACKSPACE
    Press Keys                                ${Amount_Textfield}                           CTRL+a      BACKSPACE
    Input text                                ${Depositors_MobileNumber_textfield}          94555ASH-882-012
    Input text                                ${Email_Address_Textfield}                    l.rye0014@gmail.com
    Execute JavaScript                        window.scrollTo(1,1000)
    Input text                                ${Account_Number_Textfield}                   99900HH-GHH-0001-188888
    Input text                                ${Account_Name_Textfield}                     Rye D-111
    Input text                                ${Amount_Textfield}                           99999HH-GHH-999-AA-999
    Sleep                                     5s

Date of Transaction Validation
    Scroll element into view                  ${You_canSet_your_label}
    Click element                             ${Date_Picker}
#    ${GET_DATE_COUNT_PAGE1}                   Get element count                             ${ENABLED_APPOINTMENT_DATE}
    Click element                             ${NEXT_BUTTON_CALENDAR}
    ${GET_DATE_COUNT_PAGE2}                   Get element count                             ${ENABLED_APPOINTMENT_DATE}
#    ${CONVERT_TO_INT_PAGE1}                   Convert to string                            ${GET_DATE_COUNT_PAGE1}
#    ${CONVERT_TO_INT_PAGE2}                   Convert to string                            ${GET_DATE_COUNT_PAGE2}
#    ${EVALUATE_DATE_COUNT}                    Evaluate                                     ${CONVERT_TO_INT_PAGE2}
    log                                        ${GET_DATE_COUNT_PAGE2}
    Sleep                                     3s
#    ${COUNT_ENABLED_DATES}                    Get element count                             ${ENABLED_APPOINTMENT_DATE}
    Press keys                                None                                           ESC

Digital Form Happy Path
    Sleep                                     3s
    Press Keys                                ${Account_Name_Textfield}                     CTRL+a      BACKSPACE
    Press Keys                                ${Email_Address_Textfield}                    CTRL+a      BACKSPACE
    Press Keys                                ${Account_Number_Textfield}                   CTRL+a      BACKSPACE
    Press Keys                                ${Amount_Textfield}                           CTRL+a      BACKSPACE
    Press Keys                                ${Depositors_MobileNumber_textfield}          CTRL+a      BACKSPACE
    Scroll element into view                  ${Depositors_MobileNumber_Label}
    Input text                                ${Depositors_MobileNumber_textfield}          9687698900
    ${GET_MOBILE_NUMBER_VALUE}                Get Value                                     ${Depositors_MobileNumber_textfield}
    Set suite variable                        ${MOBILE_INPUT_DIGITAL_FORM}                  +63 ${GET_MOBILE_NUMBER_VALUE}
    Scroll element into view                  ${Apointment_Details_Label}
    Input text                                ${Email_Address_Textfield}                    loro.ryancristopher@gmail.com
    ${GET_VALUE_FROM_EMAIL_ADD}               Get Value                                     ${Email_Address_Textfield}
    Set suite variable                        ${EMAIL_INPUT_DIGITAL_FORM}                   ${GET_VALUE_FROM_EMAIL_ADD}
    Execute JavaScript                        window.scrollTo(1,400)
    Click element                             ${Brach_Dropdown}
    Sleep                                     2s
    Click element                             ${Branch_option_Legazpi}
    ${GET_VALUE_FROM_BRANCH}                  Get Value                                     ${Brach_Dropdown}
    Set suite variable                        ${BRANCH_INPUT_DIGITAL_FORM}                  Makati - Legazpi
    Execute JavaScript                        window.scrollTo(1,500)
    Click element                             ${Date_Picker}
    Sleep                                     2s
    Click element                             ${Select_AppointmentDate}
    ${GET_USER_APPOINTMENT}                   Get element attribute                           //input[@name='appointmentDate']     value
    Set suite variable                        ${APPOINTMENT_DATE_INPUT_DIGITAL_FORM}          ${GET_USER_APPOINTMENT}
    Execute JavaScript                        window.scrollTo(1,1000)
    Input text                                ${Account_Number_Textfield}                     9010000856004
    ${GET_VALUE_FROM_ACCOUNT_NUMBER}          Get Value                                       ${Account_Number_Textfield}
    Set suite variable                        ${ACCOUNT_NUMBER_DIGITAL_FORM}                  9010 0008 5600 4
    Input text                                ${Account_Name_Textfield}                       Ryan Cristopher Loro
    ${GET_VALUE_FROM_ACCNAME}                 Get Value                                       ${Account_Name_Textfield}
    Set suite variable                        ${ACCOUNT_NAME_DIGITAL_FORM}                    ${GET_VALUE_FROM_ACCNAME}
    Input text                                ${Amount_Textfield}                             25000
    ${GET_VALUE_FROM_AMOUNT}                  Get Value                                       ${Amount_Textfield}
    Set suite variable                        ${CUSTOMER_AMOUT_DIGITAL_FORM}                  ${CURRENCY_VARIABLE} 25,000.00
    Click element                             ${Account_Name_Label}
    Sleep                                     3s
    Click element                             ${Digital_Form_NextBtn}
    sleep                                     3s

Service Fee Modal Validation
    Wait until page contains element          ${Service_Fee_Modal_Title}
    Element should be visible                 ${Service_Fee_Modal_Icon}
    Page should contain element               ${Service_Fee_Modal_Title}
    Page should contain element               ${Service_Fee_Modal_Details}
    Page should contain element               ${Service_Fee_Modal_Matrix}
    Page should contain element               ${Service_Fee_Continue_Button}
    Page should contain element               ${Service_Fee_Go_Back_to_form}

Click Go Back to Form
    Click element                             ${Service_Fee_Go_Back_to_form}
    Wait until page contains element          ${Digital_Form_NextBtn}
    Sleep                                     5s
    Click element                             ${Digital_Form_NextBtn}
    Wait until page contains element          ${Service_Fee_Modal_Title}
    sleep                                     2s

Click Continue Button
    Click element                             ${Service_Fee_Continue_Button}
    Sleep                                     5s

View and Navigate to Review Screen
    Scroll element into view                  ${Branch_transaction_Label}
    Wait until page contains element          ${REVIEW_DETAILS_LABEL}
    Page should contain element               ${Branch_transaction_Label}
    Page should contain element               ${X_Button}
    Page should contain element               ${Book_Appointment_Label}
    Page should contain element               ${Cash_Deposit_Label}
    Page should contain element               ${REVIEW_DETAILS_LABEL}
    Element Text Should Be                    ${REVIEW_DETAILS_CONTENT}                 Please check if the information you entered is correct.\nIf there are any corrections after the submission, the details can only be edited by the teller.
    Sleep                                     3s
    Page should contain element               ${REVIEW_DEPOSITOR_CONTACT_DETAILS}
    Element Text Should Be                    ${REVIEW_DEPOSITOR_MOBILE_NUMBER}         Depositor's Mobile No.
    Element Text Should Be                    ${REVIEW_DEPOSITOR_EMAIL_ADDRESS}         Depositor's Email Address
    Page should contain element               ${APPOINTMENT_DETAILS_LABEL}
    Page should contain element               ${BRANCH_LABEL}
    Page should contain element               ${REVIEW_APPOINTMENT_DATE}
    Execute JavaScript                        window.scrollTo(1,400)
    Page should contain element               ${REVIEW_DEPOSIT_DETAILS}
    Page should contain element               ${REVIEW_ACCOUNT_NUMBER}
    Page should contain element               ${REVIEW_ACCOUNT_NAME}
    Page should contain element               ${REVIEW_AMOUNT_TO_DEPOSIT}
    Page should contain element               ${SERVICE_FEE_NOTES}
    Page should contain element               ${SERVICE_FEE_MATRIX_LINK}
    Element should be visible                 ${REVIEW_EDIT_ICON}
    Page should contain element               ${REVIEW_EDIT_DETAILS_BUTTON}
    Page should contain element               ${REVIEW_SUBMIT_BUTTON}
    Sleep     5s

Customer Input Data Validation
    ${GET_CUSTOMER_MOBILE_NUM}              Get text                                    ${Customer_MOBILE_NUMBER_INPUT}
    Should be equal                         ${GET_CUSTOMER_MOBILE_NUM}                  ${MOBILE_INPUT_DIGITAL_FORM}
    ${GET_CUSTOMER_EMAIL_ADD}               Get text                                    ${Customer_EMAIL_ADD_INPUT}
    Should be equal                         ${GET_CUSTOMER_EMAIL_ADD}                   ${EMAIL_INPUT_DIGITAL_FORM}
    ${GET_CUSTOMER_BRANCH}                  Get text                                    ${CUSTOMER_SELECTED_BRANCH}
    Should be equal                         ${GET_CUSTOMER_BRANCH}                      ${BRANCH_INPUT_DIGITAL_FORM}
    ${GET_CUSTOMER_APPOINTMENT}             Get text                                    ${CUSTOMER_SELECTED_DATE}
    Should be equal                         ${ZERO}${GET_CUSTOMER_APPOINTMENT}          ${APPOINTMENT_DATE_INPUT_DIGITAL_FORM}
    ${GET_CUSTOMER_ACCOUNT_NUMBER}          Get text                                    ${CUSTOMER_ACC_NUMBER_INPUT}
    Should be equal                         ${GET_CUSTOMER_ACCOUNT_NUMBER}              ${ACCOUNT_NUMBER_DIGITAL_FORM}
    ${GET_CUSTOMER_NAME}                    Get text                                    ${CUSTOMER_ACC_NAME_INPUT}
    Should be equal                         ${GET_CUSTOMER_NAME}                        ${ACCOUNT_NAME_DIGITAL_FORM}
    ${GET_CUSTOMER_AMOUNT}                  Get text                                    ${CUSTOMER_AMOUNT_INPUT}
    Should be equal                         ${GET_CUSTOMER_AMOUNT}                      ${CUSTOMER_AMOUT_DIGITAL_FORM}
    SLEEP                                   5S

Review Details with Email Address
    Page should contain element             //p[contains(text(),'Email Address')]
    ${GET_CUSTOMER_EMAIL_ADD}               Get text                                    ${Customer_EMAIL_ADD_INPUT}

Review Details without Email Address
    Click element                          ${REVIEW_EDIT_DETAILS_BUTTON}
    Wait until page contains element       ${Depositor_Contact_Details}
    Page should contain element            ${Depositor_Contact_Details}
    Scroll element into view               ${Depositors_Email_Address_Label}
    Press Keys                             ${Email_Address_Textfield}                    CTRL+a      BACKSPACE
    Sleep                                  3s
    Execute JavaScript                     window.scrollTo(1,700)
    Click element                          ${Digital_Form_NextBtn}
    Sleep                                  3s
    Click element                          ${Service_Fee_Continue_Button}
    page should not contain element        //p[contains(text(),'Email Address')]
    Sleep                                  5s

Click Edit Details Button
    Click element                          ${REVIEW_EDIT_DETAILS_BUTTON}
    Wait until page contains element       ${Depositor_Contact_Details}
    Page should contain element            ${Depositor_Contact_Details}
    Scroll element into view               ${Depositors_Email_Address_Label}
    Input text                             ${Email_Address_Textfield}                    loro.ryancristopher@gmail.com
    Sleep                                  3s
    Execute JavaScript                     window.scrollTo(1,700)
    Click element                          ${Digital_Form_NextBtn}
    Sleep                                  3s
    Click element                          ${Service_Fee_Continue_Button}
    Sleep                                  3s
    Page should contain element            //p[contains(text(),'Email Address')]
    ${GET_CUSTOMER_EMAIL_ADD}              Get text                                    ${Customer_EMAIL_ADD_INPUT}
    Click element                          ${REVIEW_SUBMIT_BUTTON}
    Sleep                                  10s


