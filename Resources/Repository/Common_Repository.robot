*** Variables ***
### WAIT ###
${wait_long}            60s
${wait_mid}             30s
${wait_short}           15s

${test_data_path}       C:\\Users\\RomeoSuarezconsultan\\PycharmProjects\\Earnest_Portal\\ux40\\Resources\\Test_Datas

### LEGENDS ###
${legend_branch}        Branch
${legend_earnest}       Earnest
${legend_tbg}           TBG
${legend_online}        Online

### COLOR ###
${earnestportal_color_brown1}                                   rgba(242, 213, 184, 1)
${earnestportal_color_green1}                                   rgba(216, 246, 183, 1)
${earnestportal_color_green2}                                   rgba(17, 184, 94, 1)
${earnestportal_color_pink1}                                    rgba(243, 200, 208, 1)
${earnestportal_color_blue1}                                    rgba(187, 228, 255, 1)
${earnestportal_color_red1}                                     rgba(233, 0, 33, 1)
${earnestportal_color_gray1}                                    rgba(139, 140, 149, 1)
${earnestportal_color_gray2}                                    rgba(234, 225, 248, 1)

### FORMS ###
${earnestportal_main_form}                                      //main[@class='MuiBox-root css-o54def']
${earnestportal_activeinvestor_form}                            (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]
${earnestportal_newinvestor_form}                               (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[2]
${earnestportal_totaltransaction_form}                          (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[3]

### LABELS ###
${earnestportal_fingerprint_option1}                            Approve a request on my Microsoft Authenticator app
${earnestportal_msteamsverificationcode_option2}                Use a verification code
${earnestportal_textmessage_option3}                            Text +
${earnestportal_sidemenu_performance}                           performance

### OPTIONS ###
${earnestportal_option_textmessage}                             //*[@class='table-row']/*[@class='table-cell text-left content']/div[contains (text(),'Text +')]
${earnestportal_option_msteamsverificationcode}                 //*[@class='table-row']/*[@class='table-cell text-left content']/div[contains (text(),'Use a verification code')]
${earnestportal_option_msteamsfingerprint}                      //*[@class='table-row']/*[@class='table-cell text-left content']/div[contains (text(),'Approve a request on my Microsoft Authenticator app')]

### ATTRIBUTE VALUE ###
${earnestportal_id}                                             id