*** Variables ***
### SELECT DATE CALENDAR ELEMENTS ###
${ep46974_thisweek_select}                                      //*[@class='MuiBox-root css-qzxoik']/p[text()='This week']
${ep46974_thisweek_form}                                        //*[@class='MuiBox-root css-1u22tce']
${ep46974_thisweek_form_container1}                             //*[@class='MuiBox-root css-1u22tce']/div[1]
${ep46974_thisweek_form_container1_thisweek}                    //*[@class='MuiBox-root css-1u22tce']/div[1]/div[@class='MuiBox-root css-1li17cu']/div/div/p[text()='This week']
${ep46974_thisweek_form_container1_thismonth}                   //*[@class='MuiBox-root css-1u22tce']/div[1]/div[@class='MuiBox-root css-1li17cu']/div/div/p[text()='This month']
${ep46974_thisweek_form_container1_customrange}                 //*[@class='MuiBox-root css-1u22tce']/div[1]/div[@class='MuiBox-root css-1li17cu']/div/div/p[text()='Custom range']
${ep46974_thisweek_form_container1_customrange_fromdate}        (//*[@class='MuiBox-root css-1u22tce']/div[1]/div[@class='MuiBox-root css-1a19iwz']/div/div/div/input)[1]
${ep46974_thisweek_form_container1_customrange_todate}          (//*[@class='MuiBox-root css-1u22tce']/div[1]/div[@class='MuiBox-root css-1a19iwz']/div/div/div/input)[2]
${ep46974_thisweek_form_container2}                             //*[@class='MuiBox-root css-1u22tce']/div[2]
${ep46974_thisweek_form_container2_apply_btn}                   //*[@class='MuiBox-root css-1u22tce']/div[2]/div/p[text()='Apply']

### TRANSACTION FORM ###
${ep46974_subscription_lbl}                                     //*[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 MuiGrid-grid-md-6 MuiGrid-grid-lg-6 css-iol86l']/div/p[text()='Subscriptions']

### TRANSACTION SUMMARY
${ep46974_ave_subscription_per_user_metrics}                    (//*[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 css-iahwfu']/div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-isbt42']/div[2])[1]
${ep46974_ave_top_ups_per_user_metrics}                         (//*[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 css-iahwfu']/div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-isbt42']/div[2])[2]
${ep46974_ave_subscription_amount_metrics}                      (//*[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 css-iahwfu']/div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-isbt42']/div[2])[3]
${ep46974_ave_top_up_amount_metrics}                            (//*[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 css-iahwfu']/div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-isbt42']/div[2])[4]
${ep46974_ave_redemption_amount}                                (//*[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 css-iahwfu']/div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-isbt42']/div[2])[5]