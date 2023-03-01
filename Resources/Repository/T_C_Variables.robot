*** Variables ***
#Initial Page
${button1}                        //*[@id="__next"]/div/div[3]/div[2]/div[1]/div/div[2]/p[1]
${button_search}                  //*[@id="__next"]/div/div[5]/div[2]/div[3]/div[2]/button
${button_savings}                 //*[@id="__next"]/div/div[3]/div[2]/div[1]/div/div[2]/p[1]
${button_nearapply}               /html/body/div[3]/div[3]/div/div[2]/div[5]/div[4]/div[1]
${button_apply}                   //button[contains(text(),'APPLY NOW ONLINE')]
#T&C Page
${button_agreeT&C}                //*[@id="__next"]/div/div[3]/div/div[15]/div[1]/div/label/span/input
${button_agreeDataconsent}        //*[@id="__next"]/div/div[3]/div/div[16]/div[1]/div/label/span/input
${button_next}                    //*[@id="__next"]/div/div[3]/div/div[18]
${button_FullT&C}                 //*[@id="__next"]/div/div[3]/div/div[6]/p/a
${button_AccOpenT&C}              //*[@id="__next"]/div/div[3]/div/div[8]/p/a
${button_Privacypolicy}           //*[@id="__next"]/div/div[3]/div/div[10]/p/a
${button_dataconsent}             //*[@id="__next"]/div/div[3]/div/div[10]/p/a
${button_T&CCwrap}                //*[@id="__next"]/div/div[3]/div/div[15]/div[2]/div/span[1]/a
${button_PrvcyPlcyWrap}           //*[@id="__next"]/div/div[3]/div/div[15]/div[2]/div/span[3]/a
${button_Dataconsentwrap}         //*[@id="__next"]/div/div[3]/div/div[16]/div[2]/div/span/a
#Spiels T&C Page
${Spiels_T&C1}                    //p[text()='You are applying for a']
${Spiels_T&C2}                    //p[text()='Regular Savings Account with Debit Card']
${Spiels_T&C3}                    //p[text()='SUMMARY']
${Spiels_T$C4}                    //p[text()='Terms & Conditions and Privacy Policy']
${Spiels_T&C5}                    //p[text()='Here is a short summary of the Terms & Conditions (T&C) of Use and the Privacy Policy of our Know Your Customer (KYC) customer verification process to help you understand them better.']
${Spiels_T&C6}                    //p[text()='By undergoing the KYC process, you agree to comply with, and be bound by, all the terms of use. This also means that you fulfill the requirements, including:']
#BulletsSpiels
${Spiels_T&C7}                    //p[text()='You do not have an existing Metrobank Savings Account and/or Earnest Digital Account']
${Spiels_T&C8}                    //p[text()='You are a ']
${Spiels_T&C9}                    //p[text()='You are at least ']
${Spiels_T&C10}                   //p[text()='You agree to maintain a minimum average daily balance (ADB) of ']
${Spiels_T&C11}                   //p[text()='You agree to your account being closed if it has no balance for 90 days.']
${Spiels_T&C12}                   //p[text()='You agree to accurately provide all personal data needed to properly verify your identity.']
${Spiels_T&C13}                   //p[text()='If the information you provide is incorrect or incomplete, your account may not be created or could be closed.']
${Spiels_T&C14}                   //p[text()='Your privacy is protected by the Data Privacy Act and Metrobank’s data security policies. Jumio, a third-party partner of Metrobank, will have access to your data as part of the verification process.']
${Spiels_T&C15}                   //p[text()='Data Consent']
${Spiels_T&C16}                   //p[text()='You allow Metrobank to share your personal information with subsidiaries and affiliates within the Metrobank Group, as well as with its trusted partners.']
${Spiels_T&C17}                   //p[text()='You also agree to receive offers and services that may be relevant and suitable for your needs.']
${Spiels_T&C18}                   //p[text()='By clicking ']

#Browsers
${Terms&Conditions}               https://web-dev-ux40-customer.nprod.platform-11.com/apply/terms-conditions






