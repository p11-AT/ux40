*** Variables ***
${metrobank_Url}                            https://web-dev-ux40-customer.nprod.platform-11.com/ct
${BROWSER_CHROME}                           CHROME
${SELF_SERVICE_LABEL}                       //p[text()='Self-Service']
${SELF_SERVICE_DETAILS1}                    //p[text()='Quick actions for busy people. Select an']
${SELF_SERVICE_DETAILS2}                    //p[text()='action to get started.']
${VIEW_ALL_BUTTON}                          //button[text()='VIEW ALL']
${MAKE_A_BRANCH_TXN_LABEL}                  //p[text()='Make a branch transaction']
${BOOK_APPOINTMENTS_LABEL}                  //p[text()='Book your appointments online to get accomodated right away.']
${BOOK_NOW_BUTTON}                          //button[text()='BOOK NOW']

${Metrobank_Label}                          //p[text()='Choose a transaction']
${Choose_Txn_label}                         //p[text()='Choose a transaction']
${Cash_Deposit_Label}                       //p[text()='Cash Deposit']

${Branch_transaction_Label}                 //p[text()='Branch Transaction']
${X_Button}                                 //*[@id="__next"]/div/div[1]/div[2]/button
${Book_Appointment_Label}                   //p[text()='You are booking an appointment for']
${Cash_Deposit_Label}                       //p[text()='Cash Deposit']
${Summary_Label}                            //p[text()='SUMMARY']
${TandC_Privacy_Policy_Label}               //p[text()='Terms & Conditions and Privacy Policy']

${Here_Is_a_ShortSummary_Label}             //p[text()='Here is a short summary of the Terms & Conditions (T&C) of Use and the Privacy Policy of our Know Your Customer (KYC) customer verification process to help you understand them better.']
${T&C_One_Details}                          //p[text()='By undergoing the KYC process, you agree to comply with, and be bound by, all the terms of use. This also means that you fulfill the requirements, including:']
${T&C_One_Next_Details1}                    //p[text()='You do not have an existing Regular Savings Account with Debit Card or any Metrobank account']
${T&C_One_Next_Details2}                    //p[contains(text(),'You are a ')]
${T&C_One_Next_Details3}                    //p[contains(text(),'You are at least ')]

${T&C_Two_details}                          //p[contains(text(),'You agree to maintain a minimum average daily balance (ADB) of ')]
${T&C_Two_Next_Details}                     //p[text()='You agree to your account being closed if it has no balance for 90 days.']
${T&C_Three_Detail1}                        //p[text()='You agree to accurately provide all personal data needed to properly verify your identity.']
${T&C_Three_Detail2}                        //p[text()='If the information you provide is incorrect or incomplete, your account may not be created or could be closed.']
${T&C_Three_Detail3}                        //p[text()='Your privacy is protected by the Data Privacy Act and Metrobank’s data security policies. Jumio, a third-party partner of Metrobank, will have access to your data as part of the verification process.']

${Full_MSA_T&C}                             //a[text()='FULL METROBANK SAVINGS ACCOUNT T&C']
${Full_Account_OpeningT&C}                  //a[text()='FULL ACCOUNT OPENING T&C']
${Full_Privacy&Policy}                      //a[text()='FULL PRIVACY POLICY']
${Privacy_Act_Label}                        //p[contains(text(),'Your privacy is protected by the Data Privacy Act and Metrobank’s data')]

${Data_Consent_Label}                       //p[text()='Data Consent']
#${Next_Button_T&C}                          //*[@id="__next"]/div/div[3]/div/div[19]/button

${Data_Consent_Details1}                    //p[text()='You allow Metrobank to share your personal information with subsidiaries and affiliates within the Metrobank Group, as well as with its trusted partners.']
${Data_Consent_Details2}                    //p[text()='You also agree to receive offers and services that may be relevant and suitable for your needs.']
${Full_Data_Consent}                        //a[text()='FULL DATA CONSENT']
${T&C_Data&Privacy_Checkbox}                //*[@id="__next"]/div/div[3]/div/div[16]/div[1]/div/label/span/input
${T&C_DataPrivacy_Label}                    //*[@id="__next"]/div/div[3]/div/div[16]/div[2]/div
${DataConsent_Checkbox}                     //*[@id="__next"]/div/div[3]/div/div[17]/div[1]/div/label/span/input
${DataConsent_Checkbox_Label}               //*[@id="__next"]/div/div[3]/div/div[17]/div[2]/div
${By_CLicking_Next_Label}                   //p[contains(text(),'By clicking ')]
${Next_Button_T&C}                          //button/b[text()='Next']

#Digital Form Variables
${Cash_Deposit_Details}                     //h6[text()='Cash Deposit Details']
${Provide_The_Details_Label}                //p[text()='Provide the details below to make your appointment.']
${Depositor_Contact_Details}                //p[text()='Depositor Contact Details']
${Depositor_Contact_Details1}               //p[contains(text(),'The depositor is the one who will be present')]
${Depositors_MobileNumber_Label}            //div[text()='Depositor’s Mobile Number ']
${Depositors_MobileNumber_textfield}        //*[@id="__next"]/div/div[3]/div/form/div/div[3]/div/div[1]/input
${Mobile_Number_Phil_Icon}                  //*[@id="__next"]/div/div[3]/div/form/div/div[3]/div/div[1]/div/div[1]
${Mobile_Number_Label}                      //*[@id="__next"]/div/div[3]/div/form/div/div[3]/div/div[1]/div/div[2]
${Depositors_Email_Address_Label}           //div[text()='Depositor’s Email Address']
${Email_Address_Textfield}                  //*[@id="__next"]/div/div[3]/div/form/div/div[4]/div/div/input
${MOBILE_NUMBER_DEFAULT}                    //div[@class='MuiBox-root css-p20m4z']
${Apointment_Details_Label}                 //p[text()='Appointment Details']
${Choose_WhereandWhen_Label}                //p[text()='Choose where and when you want to set your appointment.']
${Choose_a_Branch_Label}                    //div[text()='Choose a branch']
${Branches_Limited_Label}                   //p[text()='Branches are limited in the meantime.']
${Brach_Dropdown}                           //*[@id="__next"]/div/div[3]/div/form/div/div[6]/div/div/div/div[1]/select
${Branch_option_Paseo}                      //option[text()='Makati - Paseo']
${Branch_option_Legazpi}                    //option[text()='Makati - Legazpi']
${Branch_option_Libertad}                   //option[text()='Pasay - Libertad']
${Appointment_Date_Label}                   //div[text()='Appointment Date ']
${You_canSet_your_label}                    //p[text()='You can set your branch appointment 7 days in advance.']

${Calender_DatePicker}                      //*[@id="__next"]/div/div[3]/div/form/div/div[7]/div/div/div/div/div
${Date_Picker}                              //*[@id="__next"]/div/div[3]/div/form/div/div[7]/div/div/div/div/div
${Select_AppointmentDate}                   //button[contains(text(),'28')]
${Deposit_Details_label}                    //p[text()='Deposit Details']
${Account_Number_Label}                     //div[text()='Account Number']
${Account_Number_Textfield}                 //*[@id="__next"]/div/div[3]/div/form/div/div[9]/div/div/div/div[1]/input
${Account_Name_Label}                       //div[text()='Account Name']
${Account_Name_Textfield}                   //*[@id="__next"]/div/div[3]/div/form/div/div[10]/div/div[1]/input
${Amount_to_Deposit_Label}                  //div[text()='Amount to Deposit']
${PHP_Currency_Label}                       //div[text()='PHP']
${Amount_Textfield}                         //*[@id="amount_textfield"]
${Option_Php_Currency}                      //button[text()='PHP']
${Option_USD_Currency}                      //button[text()='USD']
${Option_GBP_Currency}                      //button[text()='GBP']
${Option_CAD_Currency}                      //button[text()='CAD']
${Option_RMB_Currency}                      //button[text()='RMB']
${Option_AUD_Currency}                      //button[text()='AUD']
${Option_SGD_Currency}                      //button[text()='SGD']
${Digital_Form_NextBtn}                     //button[text()='Next']

#Error Message Variables
${Mobile_Error_Message}                     //p[text()='Please enter your 10-digit mobile number.']
${Email_Address_Error_Msg}                  //p[text()='The email you entered is invalid.']
${Global_Error_Msg}                         //p[text()='Please provide input.']
${AppointmentDate_Error_Msg}                //p[text()='Please enter appointment date.']
${Account_Number_Error_Msg}                 //p[text()='Please enter a 12 or 13-digit account number..']
${Account_Name_Error_Msg}                   //p[text()='Please enter an account name.']
${Amount_To_Deposit_Error_Msg}              //p[text()='You may deposit only up to 13 digits worth of cash.']

#Service fee Modal Vairables
${Service_Fee_Modal_Icon}                   //div[@class='css-17x0w33']
${Service_Fee_Modal_Title}                  //p[text()='This transaction may have a service fee']
${Service_Fee_Modal_Details}                //p[text()='Please note that a service fee may incur because of interbranch transactions or amount restrictions.']
${Service_Fee_Modal_Matrix}                 //button[text()='See service fee matrix here']
${Service_Fee_Continue_Button}              //button[text()='Continue']
${Service_Fee_Go_Back_to_form}              //button[text()='Go back to form']
${DATE_PICKER_DATE}                         //button[@role='gridcell']
${ENABLED_APPOINTMENT_DATE}                 //button[contains(@class, 'uiButtonBase-root MuiPickersDay-root')]
${NEXT_BUTTON_CALENDAR}                     //button[@class='MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeStart MuiIconButton-sizeSmall MuiPickersArrowSwitcher-button css-fp6ecq']

#Review Details Page
${REVIEW_DETAILS_LABEL}                     //h6[text()='Review your details']
${REVIEW_DETAILS_CONTENT}                   //p[contains(text(),'Please check if the information you entered is correct. ')]
${REVIEW_DEPOSITOR_CONTACT_DETAILS}         //h6[text()='Depositor Contact Details']
${REVIEW_DEPOSITOR_MOBILE_NUMBER}           //*[@id="__next"]/div/div[3]/div/div/div[2]/div/div/div[1]/div[1]/p
${REVIEW_DEPOSITOR_EMAIL_ADDRESS}           //*[@id="__next"]/div/div[3]/div/div/div[2]/div/div/div[2]/div[1]/p
${APPOINTMENT_DETAILS_LABEL}                //h6[text()='Appointment Details']
${BRANCH_LABEL}                             //p[text()='Branch']
${REVIEW_APPOINTMENT_DATE}                  //p[text()='Appointment Date']
${REVIEW_DEPOSIT_DETAILS}                   //h6[text()='Deposit Details']
${REVIEW_ACCOUNT_NUMBER}                    //p[text()='Account Number']
${REVIEW_ACCOUNT_NAME}                      //p[text()='Account Name']
${REVIEW_AMOUNT_TO_DEPOSIT}                 //p[text()='Amount to Deposit']

${SERVICE_FEE_NOTES}                        //p[text()='Please note that a service fee may incur because of interbranch transactions or amount restrictions.']
${SERVICE_FEE_MATRIX_LINK}                  //button[text()='See service fee matrix here']
${REVIEW_EDIT_ICON}                         //span[@class='MuiButton-startIcon MuiButton-iconSizeMedium css-1l6c7y9']
${REVIEW_EDIT_DETAILS_BUTTON}               //button[text()='Edit Details']
${REVIEW_SUBMIT_BUTTON}                     //button[text()='Submit']

#Customer inputs varaibles
${Customer_MOBILE_NUMBER_INPUT}             //*[@id="__next"]/div/div[3]/div/div/div[2]/div/div/div[1]/div[2]/p
${Customer_EMAIL_ADD_INPUT}                 //*[@id="__next"]/div/div[3]/div/div/div[2]/div/div/div[2]/div[2]/p
${CUSTOMER_SELECTED_BRANCH}                 //*[@id="__next"]/div/div[3]/div/div/div[3]/div/div/div[1]/div[2]/p
${CUSTOMER_SELECTED_DATE}                   //*[@id="__next"]/div/div[3]/div/div/div[3]/div/div/div[2]/div[2]/p
${CUSTOMER_ACC_NUMBER_INPUT}                //*[@id="__next"]/div/div[3]/div/div/div[4]/div/div/div[1]/div[2]/p
${CUSTOMER_ACC_NAME_INPUT}                  //*[@id="__next"]/div/div[3]/div/div/div[4]/div/div/div[2]/div[2]/p
${CUSTOMER_AMOUNT_INPUT}                    //*[@id="__next"]/div/div[3]/div/div/div[4]/div/div/div[3]/div[2]/p

#GLOBAL VARIABLE
${ZERO}         0
${CURRENCY_VARIABLE}        AUD
${MOBILE_INPUT_DIGITAL_FORM}
${EMAIL_INPUT_DIGITAL_FORM}
${BRANCH_INPUT_DIGITAL_FORM}
${APPOINTMENT_DATE_INPUT_DIGITAL_FORM}
${ACCOUNT_NUMBER_DIGITAL_FORM}
${ACCOUNT_NAME_DIGITAL_FORM}
${CUSTOMER_AMOUT_DIGITAL_FORM}


