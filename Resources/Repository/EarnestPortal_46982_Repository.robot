*** Variables ***
### SELECT DATE CALENDAR ELEMENTS ###
${ep46982_thisweek_select}                                      //*[@class='MuiBox-root css-qzxoik']/p[text()='This week']
${ep46982_thisweek_form}                                        //*[@class='MuiBox-root css-qzxoik'][1]/p[2]
${ep46982_daterange_form}                                       //*[@class='MuiBox-root css-qzxoik'][2]/p[2]

### DATE RANGE
${ep46982_daterange_previous}                                   //*[@class='MuiBox-root css-w8oib3']/div/div/p[text()='Last/previous period']
${ep46982_daterange_samelastweek}                               //*[@class='MuiBox-root css-w8oib3']/div/div/p[text()='Same period last week']
${ep46982_daterange_samelastmonth}                              //*[@class='MuiBox-root css-w8oib3']/div/div/p[text()='Same period last month']
${ep46982_daterange_activeinvestor_vsperiod}                    ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]/div/div/div)[3]/div[@class='MuiBox-root css-0']/div[@class='MuiBox-root css-k008qs']/p[2]
${ep46982_daterange_newinvestor_vsperiod}                       ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[2]/div/div/div)[3]/div[@class='MuiBox-root css-0']/div[@class='MuiBox-root css-k008qs']/p[2]
${ep46982_daterange_totaltransaction_vsperiod}                  ((//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[3]/div/div/div)[3]/div[@class='MuiBox-root css-0']/div[@class='MuiBox-root css-k008qs']/p[2]

${ep46982_daterange_totalregistereduser_vsperiod}               (//*[@class='MuiBox-root css-g3nmlk'])[1]/div/div[2]/div[2]/p[2]
${ep46982_daterange_learnuserlesson_vsperiod}                   (//*[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-6 css-1s50f5r'])[1]/div/div/div/div/div[@class='MuiBox-root css-17pnk5k']/p[2]
${ep46982_daterange_learninvestorlesson_vsperiod}               ((//*[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-6 css-1s50f5r'])[2]/div/div/div/div)[3]/p[2]

###
${ep46982_previousperiod}                                       Previous period
${ep46982_sameperiodlastweek}                                   Same period last week
${ep46982_sameperiodlastmonth}                                  Same period last month