*** Variables ***
#   Identity Verification Page
${IDSELECT_URL}                     https://web-dev-ux40-customer.nprod.platform-11.com/apply/id/select
${IDVerification_Header}            //p[contains(text(),'Identity Verification')]
${IDVerification_Title_1}           //p[contains(text(),'You are applying for a')]
${IDVerification_Title_2}           //p[contains(text(),'Regular Savings Account with Debit Card')]
${Subtext_1}                        //p[contains(text(),'Help us verify your identity with a few extra steps')]
${Subtext_2}                        //*[@id="__next"]/div/div[3]/div/div[3]/span[1]
${Subtext_3}                        //*[@id="__next"]/div/div[3]/div/div[3]/span[2]
${ChooseID_Label}                   //div[contains(text(),'Choose your ID')]
${ChooseID_Dropdown}                //*[@id="__next"]/div/div[3]/div/div[4]/div/div/div
${ChooseID_Proceed_Btn}             //*[@id="__next"]/div/div[3]/div/button

#   List of ID's dropdown
${ChooseID_List}                      /html/body/div[2]/div[3]/div/div/ul
${ID_Dropdown_Frame}                 /html/body/div[2]/div[3]/div
${ID_Dropdown_Label_1}                //p[contains(text(),'Choose your ID')]
${ID_Dropdown_Label_2}                //p[contains(text(),'Select from 22 options')]

