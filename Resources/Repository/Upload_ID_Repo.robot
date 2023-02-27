*** Variables ***
#   Identity Verification Page
${IDSELECT_URL}                     https://web-dev-ux40-customer.nprod.platform-11.com/apply/id/select
${IDVerification_Header}            //p[contains(text(),'Identity Verification')]
${IDVerification_Title_1}           //p[contains(text(),'You are applying for a')]
${IDVerification_Title_2}           //p[contains(text(),'Regular Savings Account with Debit Card')]
${Subtext_1}                        //p[contains(text(),'Help us verify your identity with a few extra steps')]
${Subtext_2}                        //*[@id="__next"]/div/div/div[3]/div/div[3]/span[1]
${Subtext_3}                        //*[@id="__next"]/div/div/div[3]/div/div[3]/span[2]
${ChooseID_Label}                   //div[contains(text(),'Choose your ID')]
${ChooseID_Dropdown}                //*[@role="button" and @aria-haspopup="listbox"]
${ChooseID_Proceed_Btn}             //*[@id="__next"]/div/div[3]/div/button

#   List of ID's dropdown
${ChooseID_Listbox}                     //*[@aria-haspopup='listbox']
${ChooseID_Windows_Proceed_Btn}         /html/body/div[2]/div[3]/div/div/button[1]
${ID_Dropdown_Label_1}                  //p[contains(text(),'Choose your ID')]
${ID_Dropdown_Label_2}                  //p[contains(text(),'Select from 22 options')]

#   Check list of IDS
${label_immigrant_COR}                   //span[text()="Alien Certificate of Registration or Immigrant Certificate of Registration"]
${label_Company_ID_Sign}                 //span[text()="Company ID with signatures"]
${label_DL}                              //span[text()="Driver’s license"]
${label_Foreign_Passport}                //span[text()="Foreign passport (non-Philippine issued)"]
${label_GSIS}                            //span[text()="GSIS e-Card"]
${label_Government_Owned_ID}             //span[text()="Government Office and Government Owned and Controlled Corporations ID"]
${label_Integrated_Bar_ID}               //span[text()="Integrated Bar of the Philippines ID"]
${label_OFW_ID}                          //span[text()="Overseas Filipino Worker ID or e-card"]
${label_PRC_ID}                          //span[text()="PRC ID with signature"]
${label_PWD_ID}                          //span[text()="Persons with Disabilities ID"]
${label_Nat_ID}                          //span[text()="Philippine National ID (PhilID/PhilSys)"]
${label_PhilPassport_ID}                 //span[text()="Philippine passport"]
${label_Postal_ID}                       //span[text()="Postal ID"]
${label_ePhilHealth_ID}                  //span[text()="Printed ePhilID"]
${label_School_Certification_ID}         //span[text()="Public or Government School certification"]
${label_SSS_ID}                          //span[text()="SSS ID"]
${label_School_ID}                       //span[text()="School ID with photo"]
${label_Seafarer_Doc_ID}                 //span[text()="Seafarer's Identification Document"]
${label_Seaman_Book_ID}                  //span[text()="Seaman's Book"]
${label_Senior_Citizen_ID}               //span[text()="Senior Citizen Card"]
${label_UMID_ID}                         //span[text()="UMID"]
${label_Voter_ID}                        //span[text()="Voter’s ID with QR code"]

#   Picker
${list_immigrant_COR}                   Alien Certificate of Registration or Immigrant Certificate of Registration
${list_Company_ID_Sign}                 Company ID with signaturess
${list_DL}                              Driver’s license
${list_Foreign_Passport}                Foreign passport (non-Philippine issued)
${list_GSIS}                            GSIS e-Card
${list_Government_Owned_ID}             Government Office and Government Owned and Controlled Corporations ID
${list_Integrated_Bar_ID}               Integrated Bar of the Philippines ID
${list_OFW_ID}                          Overseas Filipino Worker ID or e-card
${list_PRC_ID}                          PRC ID with signature
${list_PWD_ID}                          Persons with Disabilities ID
${list_Nat_ID}                          Philippine National ID (PhilID/PhilSys)
${list_PhilPassport_ID}                 Philippine passport
${list_Postal_ID}                       Postal ID
${list_PhilHealth_ID}                   Printed ePhilID
${list_School_Certification_ID}         Public or Government School certification
${list_SSS_ID}                          SSS ID
${list_School_ID}                       School ID with photo
${list_Seafarer_Doc_ID}                 Seafarers Identification Document
${list_Seaman_Book_ID}                  Seamans Book
${list_Senior_Citizen_ID}               Senior Citizen Card
${list_UMID_ID}                         UMID
${list_Voter_ID}                        Voters ID with QR code

${list_radio_button}                            //*[@class="PrivateSwitchBase-input css-1m9pwf3"]

${select_button}                                //*[@class="MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-fullWidth MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-fullWidth css-rfth2q"]

${TakePhoto_NonJumio_btn}                       //button[text()="Take photo"]
${UploadPhoto_NonJumio_btn}                     //label[text()="Upload from photo library"]

#   Non- Jumio Supported - Upload Front page
${ChooseFile_NonJumio_Text_1}                   //p[text()="Step 1 of 2"]
${ChooseFile_NonJumio_Text_2}                   //p[text()="Upload a color image of the entire document. Screenshots are not allowed. JPG, JPEG or PNG format only."]
${ChooseFile_NonJumio_Back_Btn}                 //button[text()="Back"]
${ChooseFile_NonJumio_btn}                      //input[@type='file']

#   Upload Front page - Review
${NonJumio_Review_Text_1}                       //*[@id="__next"]/div/div/div[3]/div/div[1]/h6
${NonJumio_Review_Text_2}                       //p[text()="Please check if the photo has no shadows and is not blurry and shows your clear signature (if applicable)."]
${NonJumio_TryAgain_Btn}                        //button[text()="Try again"]
${NonJumio_Continue_Btn}                        //button[text()="Continue"]

#   Non- Jumio Supported - Upload Back page
${ChooseFile_NonJumioBack_Text_1}               //p[text()="Step 2 of 2"]
${ChooseFile_NonJumioBack_Text_2}               //p[text()="Upload Back"]
${ChooseFile_NonJumioBack_Text_3}               //*[@id="__next"]/div/div/div[3]/div/div[4]/p

#   Upload Back page - Review
${NonJumio_Review_Text_1}                       //*[@id="__next"]/div/div/div[3]/div/div[1]/h6
${NonJumio_Review_Text_2}                       //p[text()="Please check if the photo has no shadows and is not blurry and shows your clear signature (if applicable)."]
${NonJumio_TryAgain_Btn}                        //button[text()="Try again"]
${NonJumio_Continue_Btn}                        //button[text()="Continue"]

#   Proceed - Jumio Supported
${JumioSupported_Proceed_Btn}                           //button[text()="Proceed"]
${JumioSupported_Frame}                                 //*[@id="__next"]/div/div/div[3]/div/div/iframe
${JumioSupported_Upload_Btn}                            //*[@id="button-source-upload"]
${JumioSupported_Upload_Title}                          //*[@id="header-capture"]/app-file-upload-id-card-subtype
${JumioSupported_Upload_Sub_Text_1}                     //*[@id="app-root"]/div/div/div/div/main/div/app-id-capture/div/app-capture/app-file-field/div/div[2]/app-file-label/label/app-steps-caption/h3
${JumioSupported_Upload_Sub_Text_2}                     //*[@id="app-root"]/div/div/div/div/main/div/app-id-capture/div/app-capture/app-file-field/div/div[2]/app-file-label/label/div
${JumioSupported_Upload_ChooseFile_Btn}                 //*[@id="app-root"]/div/div/div/div/main/div/app-id-capture/div/app-capture/app-file-field/div/div[2]/app-file-label/label/app-field-button

#   Review Uploaded - Jumio Supported
${JumioSupported_Upload_Review_Area}                    //*[@id="app-root"]/div/div/div/div/main/div/app-id-preview/app-preview/div/div[1]/div
${JumioSupported_Upload_Review_Title}                   //*[@id="preview-headline"]
${JumioSupported_Upload_Review_Text_1}                  //*[@id="app-root"]/div/div/div/div/main/div/app-id-preview/app-preview/div/div[2]/ul/li[1]/span
${JumioSupported_Upload_Review_Text_2}                  //*[@id="app-root"]/div/div/div/div/main/div/app-id-preview/app-preview/div/div[2]/ul/li[2]
${JumioSupported_Upload_Review_Text_3}                  //*[@id="app-root"]/div/div/div/div/main/div/app-id-preview/app-preview/div/div[2]/ul/li[3]
${JumioSupported_Upload_Tooltip}                        //*[@id="app-root"]/div/div/div/div/main/div/app-id-preview/app-preview/div/div[2]/ul/li[1]/app-info-button/button
${JumioSupported_Upload_Tooltip_Close}                  //*[@class="info-button__close"]
${JumioSupported_Upload_TryAgain}                       //*[@id="preview-retry"]
${JumioSupported_Upload_Confirm}                        //*[@id="preview-confirm"]



${Selfie_Capture_URL}                           https://web-dev-ux40-customer.nprod.platform-11.com/apply/id/selfie-capture
