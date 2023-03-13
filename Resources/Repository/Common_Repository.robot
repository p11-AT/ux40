*** Variables ***
${email_rj}                                                 romeo.consultant@platform-11.com
${passw_rj}                                                 RJVertere2023
### MAIN BODY FORM ###
${earnestportal_body_main_form}                     //*[@id='__next']/*[@class='MuiBox-root css-k008qs']
### WAIT ###
${wait_long}            60s
${wait_mid}             30s
${wait_short}           15s

${test_data_path}       C:\\Users\\RomeoSuarezconsultan\\PycharmProjects\\Earnest_Portal\\ux40\\Resources\\Test_Datas

### LEGENDS ###
${legend_branch}            Branch
${legend_earnest}           Earnest
${legend_tbg}               TBG
${legend_online}            Online
${legend_subscription}      Subscriptions
${legend_redemption}        Redemptions
${legend_rsp}               RSP

### COLOR ###
${earnestportal_color_brown1}                                   rgba(242, 213, 184, 1)
${earnestportal_color_green1}                                   rgba(216, 246, 183, 1)
${earnestportal_color_green2}                                   rgba(17, 184, 94, 1)
${earnestportal_color_green3}                                   rgba(153, 221, 212, 1)
${earnestportal_color_pink1}                                    rgba(243, 200, 208, 1)
${earnestportal_color_pink2}                                    rgba(239, 168, 185, 1)
${earnestportal_color_blue1}                                    rgba(187, 228, 255, 1)
${earnestportal_color_blue2}                                    rgba(0, 126, 204, 1)
${earnestportal_color_red1}                                     rgba(233, 0, 33, 1)
${earnestportal_color_gray1}                                    rgba(139, 140, 149, 1)
${earnestportal_color_gray2}                                    rgba(234, 225, 248, 1)
${earnestportal_color_gray3}                                    rgba(240, 240, 240, 1)
${earnestportal_color_other1}                                   rgba(247, 221, 189, 1)

### FORMS ###
${earnestportal_main_form}                                      //main[@class='MuiBox-root css-o54def']
${earnestportal_activeinvestor_form}                            (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]
${earnestportal_newinvestor_form}                               (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[2]
${earnestportal_totaltransaction_form}                          (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[3]
${earnestportal_homepageheader_form}                            //*[@class='MuiToolbar-root MuiToolbar-gutters MuiToolbar-regular css-h5adt9']
${earnestportal_homepageheader_form_insights}                   //*[@class='MuiToolbar-root MuiToolbar-gutters MuiToolbar-regular css-h5adt9']/div[1]/h5
${earnestportal_homepageheader_form_vs}                         //*[@class='MuiToolbar-root MuiToolbar-gutters MuiToolbar-regular css-h5adt9']/div[1]/p
${earnestportal_homepagesidepanel_form}                         //*[@class='MuiPaper-root MuiPaper-elevation MuiPaper-elevation0 MuiDrawer-paper MuiDrawer-paperAnchorLeft MuiDrawer-paperAnchorDockedLeft css-1l8j5k8']

### LABELS ###
${earnestportal_fingerprint_option1}                            Approve a request on my Microsoft Authenticator app
${earnestportal_msteamsverificationcode_option2}                Use a verification code
${earnestportal_textmessage_option3}                            Text +
${earnestportal_sidemenu_performance}                           performance
${earnestportal_learn}                                          (//*[@class='MuiTypography-root MuiTypography-h6 MuiTypography-noWrap css-125aylr'])[2]

### OPTIONS ###
${earnestportal_option_textmessage}                             //*[@class='table-row']/*[@class='table-cell text-left content']/div[contains (text(),'Text +')]
${earnestportal_option_msteamsverificationcode}                 //*[@class='table-row']/*[@class='table-cell text-left content']/div[contains (text(),'Use a verification code')]
${earnestportal_option_msteamsfingerprint}                      //*[@class='table-row']/*[@class='table-cell text-left content']/div[contains (text(),'Approve a request on my Microsoft Authenticator app')]

### ATTRIBUTE VALUE ###
${earnestportal_id}                                             id

### IMG ###
${earnestportal_ep_img}                                         //img[@alt='earnest logo']

### BUTTON ###
${earnestportal_logout_btn}                                     //span[text()='Log Out']
${earnestportal_login_btn}                                      //button[text()='Log in']

### MICROSOFT
${earnestportal_microsoft1}                                     //*[@class='inner fade-in-lightbox']
${earnestportal_microsoft_list_user}                            //*[@class='table']

### CSS STYLE ATTRIBUTES
${css_font_size}                                                font-size
${css_font_weight}                                              font-weight
${css_font_height}                                              line-height