*** Variables ***
#Contact Details Elements
${CONTACTDETAILS_URL}               https://web-dev-ux40-customer.nprod.platform-11.com/apply/contact-details
${CONTACTDETAILS_TITLE}             //*[@id="__next"]/div/div[3]/div/form/div/div[1]/span
${CONTACTDETAILS_SUBTITLE}          //*[@id="__next"]/div/div[3]/div/form/div/div[1]/p
${MOBILE_NUMBER_LABEL}              //div[contains(text(),'Mobile Number')]
${MOBILE_NUMBER_FIELD}              //*[@id="__next"]/div/div[3]/div/form/div/div[2]/div[1]/input
${EMAIL_ADDRESS_LABEL}              //div[contains(text(),'Email Address')]
${EMAIL_ADDRESS_FIELD}              //*[@id="__next"]/div/div[3]/div/form/div/div[3]/div/input
${CD_SUBMIT_BTN}                    //*[@id="__next"]/div/div[3]/div/form/div/button

# Mobile and Email Verification Page Elements
${M_OTP_TITLE}                      //*[@id="__next"]/div/div[3]/form/div/span
${M_OTP_SUBTITLE}                   //p[contains(text(),'Please enter the 6-digit One-Time PIN we sent to your registered mobile number for account verification. ')]
${M_OTP_LABEL}                      //div[contains(text(),'One-time PIN')]
${M_OTP_RESENDCODE_COUNTER}         //*[@id="__next"]/div/div[3]/form/div/div/div/div/div[2]/div/p
${M_OTP_ELAPSED_LABEL}              //*[@id="__next"]/div/div[3]/form/div/div/div/div/div[2]/div/p
${M_OTP_SENDNEW_CODE}               //*[@id="__next"]/div/div[3]/form/div/div/div/div/div[2]/p

#Entering OTP
${OTP_SUBMIT_BTN}                   //*[@id="__next"]/div/div[3]/form/div/div/button
${numeric_input}                    //input[@inputmode='numeric']
${WAIT_LONG}                        60s
${WAIT_MID}                         30s
${WAIT_SHORT}                       15s

#CIF Lite
${CIFLITE_URL}                      https://web-dev-ux40-customer.nprod.platform-11.com/apply/cif-lite
${HEADER}                           //p[contains(text(),'Get Started')]
${TITLE}                            //p[contains(text(),'Personal Information')]
${SUBTITLE}                         //p[contains(text(),'Provide details about yourself to help us identify you.')]
${SUBMIT_BTN}                       //*[@id="__next"]/div/div[3]/div/form/div/button
${TITLEDROPDOWN_LABEL}              //div[contains(text(),'Title')]
${TITLE_DROPDOWN}                   //*[@id="__next"]/div/div[3]/div/form/div/div[2]/div[1]/div[1]/div/div/div[1]/select
${TITLE_REQUIRED}                   //p[contains(text(),'Required')]
${FIRSTNAME_LABEL}                  //div[contains(text(),'First Name')]
${FIRSTNAME_FIELD}                  //*[@id="__next"]/div/div[3]/div/form/div/div[2]/div[1]/div[2]/div/div[1]/input
${FIRSTNAME_REQUIRED}               //p[contains(text(),'Your first name is required.')]
${MIDDLENAME_LABEL}                 //div[contains(text(),'Middle Name')]
${MIDDLENAME_FIELD}                 //*[@id="__next"]/div/div[3]/div/form/div/div[2]/div[2]/div/div[1]/input
${MIDDLENAME_REQUIRED}              //p[contains(text(),'Please provide your middle name or select `I do not have a middle name`.')]
${MIDDLENAME_CHECKBOX}              //*[@id="__next"]/div/div[3]/div/form/div/div[2]/div[3]/div/label/span[1]/input
${LASTNAME_LABEL}                   //div[contains(text(),'Last Name')]
${LASTNAME_FIELD}                   //*[@id="__next"]/div/div[3]/div/form/div/div[2]/div[4]/div[1]/div/div[1]/input
${LASTNAME_REQUIRED}                //p[contains(text(),'Your last name is required.')]
${SUFFIX_LABEL}                     //div[contains(text(),'Suffix')]
${SUFFIX_DROPDOWN}                  //*[@id="__next"]/div/div[3]/div/form/div/div[2]/div[4]/div[2]/div/div/div/select
${BIRTHDATE_LABEL}                  //div[contains(text(),'Date of Birth')]
${BIRTHDATE_FIELD}                  //input[@placeholder="MM-DD-YYYY"]
${BIRTHDATE_REQUIRED}               //p[contains(text(),'Your birthday is required.')]
${BIRTHDATE_INCORRECT}              //p[contains(text(),'The date you entered does not exist.')]
${CIFLITEDONE_ACTUALURL}            https://web-dev-ux40-customer.nprod.platform-11.com/apply/cif-lite/processing






