*** Variables ***
### Browser ###
${browser_chrome}       chrome
${browser_edge}         edge

### URL ###
${ux40_url}             https://web-dev-ux40-customer.nprod.platform-11.com/
${ux40_url2}            https://web-dev-ux40-customer.nprod.platform-11.com/apply/contact-details

### Banner ###
${banner_form}          //*[@class='MuiBox-root css-79elbk']

### Wait ###
${wait_long}            60s
${wait_mid}             30s
${wait_short}           15s

### Container ###
${regularsavings_container}                 //*[@class='css-nen11g-MuiStack-root']

### IMAGE ###
${regularsavings_img}                       //*[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-md-3.5 css-16tmfzr']/span/span/img

### BUTTONS ###
${applynow_btn}                             //button[text()='APPLY NOW ONLINE']
${next_btn}                                 //button/b[text()='Next']
${submit_btn}                               //button[text()='Submit']

### CHECKBOX ###
${t&c_condi_and_data_privacy_policy}        (//input[@type='checkbox'])[1]

### INPUT FIELDS ###
${numeric_input}                            //input[@inputmode='numeric']
${email_input}                              //input[@inputmode='email']

### OTHERS ###
${t&c_content}                              //*[@class='MuiBox-root css-1esdpkm']