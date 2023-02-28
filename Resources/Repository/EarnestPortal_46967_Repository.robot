*** Variables ***
${email_rj}                                                 romeo.consultant@platform-11.com
${passw_rj}                                                 RJVertere2023
### BUTTON ###
${earnestportal_login_btn}                                      //button[text()='Log in']

### INPUT ###
${earnestportal_email_input}                                    //input[@id='i0116']
${earnestportal_passw_input}                                    //input[@id='i0118']
${earnestportal_codeotp_input}                                  //input[@id='idTxtBx_SAOTCC_OTC']


### BUTTON ###
${earnestportal_popup_next_btn}                                 //input[@id='idSIButton9']
${earnestportal_popup_verify_btn}                               //input[@id='idSubmit_SAOTCC_Continue']
${earnestportal_popup_no_btn}                                   //input[@id='idBtn_Back']

### A BUTTON ###
${earnestportal_icantaccesmyauthenticator}                      //a[@id='signInAnotherWay']

### OPTIONS ###
${earnestportal_option_textmessage}                             //*[@class='table-row']/*[@class='table-cell text-left content']/div[contains (text(),'Text +')]

### IMG ###
${earnestportal_ep_img}                                         //img[@alt='earnest logo']

### LABELS ###
${earnestportal_legend_label}                                   (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]/div/div[@class='MuiPaper-root MuiPaper-elevation MuiPaper-rounded MuiPaper-elevation1 MuiCard-root css-1dpqs7r']/div/div
${earnestportal_legend_color}                                   (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]/div/div[@class='MuiPaper-root MuiPaper-elevation MuiPaper-rounded MuiPaper-elevation1 MuiCard-root css-1dpqs7r']/div/div/div
# ACTIVE INVESTOR
${earnestportal_activeinvestor_vsperiod_percentage}             ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]/div/div/div)[3]/div[@class='MuiBox-root css-0']/div[@class='MuiBox-root css-k008qs']/p[1]
${earnestportal_activeinvestor_vssovtarget_percentage}          ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]/div/div/div)[3]/div[@class='MuiBox-root css-0']/div[@class='MuiBox-root css-1m29ivc']/p[1]
${earnestportal_activeinvestor_totalactiveinvestor}             ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]/div/div/div)[2]/div/div/p[@class='MuiTypography-root MuiTypography-body1 css-1ojvtih']
${earnestportal_activeinvestor_newactiveinvestor}               ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]/div/div/div)[2]/div/div/p[@class='MuiTypography-root MuiTypography-body1 css-1dzjmoo']
${earnestportal_activeinvestor_newactiveinvestor_span}          ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]/div/div/div)[2]/div/div/p[@class='MuiTypography-root MuiTypography-body1 css-1dzjmoo']/span
${earnestportal_activeinvestor_targetcount}                     ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]/div/div/div)[2]/div/div/p[@class='MuiTypography-root MuiTypography-body1 css-1vyjiic']
${earnestportal_activeinvestor_bargraph}                        ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]/div/div/div)[2]/div/div/div/canvas
${earnestportal_activeinvestor_percentearnestsov}               ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]/div/div/div)[3]/div/p[@class='MuiTypography-root MuiTypography-body1 css-14j5dp3']
${earnestportal_activeinvestor_datebelowsov}                    ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]/div/div/div)[3]/div[@class='MuiBox-root css-0']/div[@class='MuiBox-root css-0']/p
# NEW INVESTOR
${earnestportal_newinvestor_vsperiod_percentage}                ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[2]/div/div/div)[3]/div[@class='MuiBox-root css-0']/div[@class='MuiBox-root css-k008qs']/p[1]
${earnestportal_newinvestor_vssovtarget_percentage}             ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[2]/div/div/div)[3]/div[@class='MuiBox-root css-0']/div[@class='MuiBox-root css-1m29ivc']/p[1]
${earnestportal_newinvestor_totalactiveinvestor}                ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[2]/div/div/div)[2]/div/div/p[@class='MuiTypography-root MuiTypography-body1 css-1ojvtih']
${earnestportal_newinvestor_newactiveinvestor}                  ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[2]/div/div/div)[2]/div/div/p[@class='MuiTypography-root MuiTypography-body1 css-1dzjmoo']
${earnestportal_newinvestor_newactiveinvestor_span}             ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[2]/div/div/div)[2]/div/div/p[@class='MuiTypography-root MuiTypography-body1 css-1dzjmoo']/span
${earnestportal_newinvestor_targetcount}                        ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[2]/div/div/div)[2]/div/div/p[@class='MuiTypography-root MuiTypography-body1 css-1vyjiic']
${earnestportal_newinvestor_bargraph}                           ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[2]/div/div/div)[2]/div/div/div/canvas
${earnestportal_newinvestor_percentearnestsov}                  ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[2]/div/div/div)[3]/div/p[@class='MuiTypography-root MuiTypography-body1 css-14j5dp3']
${earnestportal_newinvestor_datebelowsov}                       ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[2]/div/div/div)[3]/div[@class='MuiBox-root css-0']/div[@class='MuiBox-root css-0']/p
# TOTAL TRANSACTION
${earnestportal_totaltransaction_vsperiod_percentage}           ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[3]/div/div/div)[3]/div[@class='MuiBox-root css-0']/div[@class='MuiBox-root css-k008qs']/p[1]
${earnestportal_totaltransaction_vssovtarget_percentage}        ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[3]/div/div/div)[3]/div[@class='MuiBox-root css-0']/div[@class='MuiBox-root css-1m29ivc']/p[1]
${earnestportal_totaltransaction_totalactiveinvestor}           ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[3]/div/div/div)[2]/div/div/p[@class='MuiTypography-root MuiTypography-body1 css-1ojvtih']
${earnestportal_totaltransaction_newactiveinvestor}             ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[3]/div/div/div)[2]/div/div/p[@class='MuiTypography-root MuiTypography-body1 css-1dzjmoo']
${earnestportal_totaltransaction_newactiveinvestor_span}        ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[3]/div/div/div)[2]/div/div/p[@class='MuiTypography-root MuiTypography-body1 css-1dzjmoo']/span
${earnestportal_totaltransaction_targetcount}                   ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[3]/div/div/div)[2]/div/div/p[@class='MuiTypography-root MuiTypography-body1 css-1vyjiic']
${earnestportal_totaltransaction_bargraph}                      ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[3]/div/div/div)[2]/div/div/div/canvas
${earnestportal_totaltransaction_percentearnestsov}             ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[3]/div/div/div)[3]/div/p[@class='MuiTypography-root MuiTypography-body1 css-14j5dp3']
${earnestportal_totaltransaction_datebelowsov}                  ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[3]/div/div/div)[3]/div[@class='MuiBox-root css-0']/div[@class='MuiBox-root css-0']/p
