*** Variables ***
### SELECT DATE CALENDAR ELEMENTS ###
${ep46973_thisweek_select}                                      //*[@class='MuiBox-root css-qzxoik']/p[text()='This week']
${ep46973_thisweek_form}                                        //*[@class='MuiBox-root css-1u22tce']
${ep46973_thisweek_form_container1}                             //*[@class='MuiBox-root css-1u22tce']/div[1]
${ep46973_thisweek_form_container1_thisweek}                    //*[@class='MuiBox-root css-1u22tce']/div[1]/div[@class='MuiBox-root css-1li17cu']/div/div/p[text()='This week']
${ep46973_thisweek_form_container1_thismonth}                   //*[@class='MuiBox-root css-1u22tce']/div[1]/div[@class='MuiBox-root css-1li17cu']/div/div/p[text()='This month']
${ep46973_thisweek_form_container1_customrange}                 //*[@class='MuiBox-root css-1u22tce']/div[1]/div[@class='MuiBox-root css-1li17cu']/div/div/p[text()='Custom range']
${ep46973_thisweek_form_container1_customrange_fromdate}        (//*[@class='MuiBox-root css-1u22tce']/div[1]/div[@class='MuiBox-root css-1a19iwz']/div/div/div/input)[1]
${ep46973_thisweek_form_container1_customrange_todate}          (//*[@class='MuiBox-root css-1u22tce']/div[1]/div[@class='MuiBox-root css-1a19iwz']/div/div/div/input)[2]
${ep46973_thisweek_form_container2}                             //*[@class='MuiBox-root css-1u22tce']/div[2]
${ep46973_thisweek_form_container2_apply_btn}                   //*[@class='MuiBox-root css-1u22tce']/div[2]/div/p[text()='Apply']

### TRANSACTION FORM ###
${ep46973_subscription_lbl}                                     //*[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 MuiGrid-grid-md-6 MuiGrid-grid-lg-6 css-iol86l']/div/p[text()='Subscriptions']

### TRANSACTION TYPE ###
${ep46973_transaction_value}                                    //*[@class='MuiBox-root css-1wnm7qn']/div/div/div/span[2]
${ep46973_transaction_subscription_value}                       (//*[@class='MuiBox-root css-1wnm7qn']/div/div/div/span[2])[1]/span
${ep46973_transaction_redemption_value}                         (//*[@class='MuiBox-root css-1wnm7qn']/div/div/div/span[2])[2]/span
${ep46973_transaction_rsp_value}                                (//*[@class='MuiBox-root css-1wnm7qn']/div/div/div/span[2])[3]/span

### Legend
${ep46973_legend_container}     (//*[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 MuiGrid-grid-md-6 MuiGrid-grid-lg-6 css-iol86l'])[6]/div[1]/div[1]/div/div/div
${ep46973_legend_color}         (//*[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12 MuiGrid-grid-md-6 MuiGrid-grid-lg-6 css-iol86l'])[6]/div[1]/div[1]/div/div/div/div

${date_test}                    10032022
