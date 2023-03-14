*** Settings ***
Documentation       [Portal] Dashboard - Show data for Transactions - Transaction Type
Library             Selenium2Library
Library             DateTime
Library             Collections

### KEYWORDS ###
Resource            ../../Resources/Keywords/EarnestPortal_46973_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/EarnestPortal_46973_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
46973 [Portal] Dashboard - Show data for Transactions - Transaction Type STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     The data of transactions by type on Earnest should be shown as a stacked column graph
    ...     - GIVEN a user is in the Transactions section of the dashboard
    ...     - WHEN a user looks at "By transaction type" numbers
    ...     - THEN a user should see a column graph of subscriptions, redemptions, and RSP transactions on Earnest (See #2 on the photo guide)
    ...     - AND a legend representing each data should be displayed (See #1 on photo guide)

    Wait Until Element Is Visible               ${earnestportal_homepageheader_form}                    ${wait_long}
    CLICKING BUTTON VISIBLE AND ENABLED         ${ep46973_thisweek_select}
    Wait Until Element Is Visible               ${ep46973_thisweek_form}                                ${wait_long}
    Wait Until Element Is Visible               ${ep46973_thisweek_form_container1}                     ${wait_long}
    Wait Until Element Is Visible               ${ep46973_thisweek_form_container2}                     ${wait_long}
    CLICKING BUTTON VISIBLE AND ENABLED         ${ep46973_thisweek_form_container1_customrange}
    Set Selenium Speed    1s
#    Click Element At Coordinates    ${ep46973_thisweek_form_container1_customrange_fromdate}    ${55}    ${10}      # clicking date icon

#    ${date1}        Convert Date    2022/10/12      exclude_millis=yes      result_format=%m%d%Y
    ${date1}        Convert Date    2022/10/04      exclude_millis=yes      result_format=datetime
    ${dateyear}     Convert To String    ${date1.year}
    ${dateday}      Convert To Integer    ${date1.day}
    ${datemonth}    Convert To String    ${date1.month}
#    ${date1}=       Evaluate    '${date1}'.zfill(2)
    Input Text    ${ep46973_thisweek_form_container1_customrange_fromdate}        ${datemonth}${dateday}${dateyear}      #10122022
    Set Selenium Speed    0s
    Capture Page Screenshot                     Select Custom range date
    Click Element                               ${ep46973_thisweek_form_container2_apply_btn}
    Sleep    2s
    Scroll Element Into View                    ${earnestportal_learn}
    Wait Until Element Is Visible               ${earnestportal_learn}              ${wait_long}

    #### VALIDATING LEGEND CONTAINER
    VALIDATING LEGENDS LABEL            ${ep46973_legend_container}    ${legend_subscription}    ${legend_redemption}    ${legend_rsp}
    GET BACKGROUND COLOR                (${ep46973_legend_color})[1]      ${earnestportal_color_green3}
    GET BACKGROUND COLOR                (${ep46973_legend_color})[2]      ${earnestportal_color_other1}
    GET BACKGROUND COLOR                (${ep46973_legend_color})[3]      ${earnestportal_color_pink2}

46973 [Portal] Dashboard - Show data for Transactions - Transaction Type STEP 4
    [Documentation]
    ...     *** Owner RJ ***
    ...     The transaction summary should show averages for key usage metrics, including subscriptions per user, top ups per user,
    ...     subscription amount, top up amount, and redemption amount
    ...     - GIVEN a user is in the Transactions section of the dashboard
    ...     - WHEN a user looks at "Transaction summary"
    ...     - THEN a user should see a list of averages for the specified metrics:
    ...     - Ave. subscriptions per user (See #1 on guide)
    ...     - Ave. top-ups per user (See #3 on guide)
    ...     - Ave. subscription amount (See #5 on guide)
    ...     - Ave. top-up amount (See #7 on guide)
    ...     - Ave. redemption amount (See #9 on guide)
    ...     - AND a comparison of the metric versus target:
    ...     - Ave. subscriptions per user (See #2 on guide)
    ...     - Ave. top-ups per user (See #4 on guide)
    ...     - Ave. subscription amount (See #6 on guide)
    ...     - Ave. top-up amount (See #8 on guide)
    ...     - Ave. redemption amount (See #10 on guide)


    ### VALIDATE SUBSCRIPTION
    Wait Until Element Is Visible                   (${ep46973_transaction_value})[1]              ${wait_mid}
    ${subscription_val}         Get Text            ${ep46973_transaction_subscription_value}
    ${subscription_val1}        Split String        ${subscription_val}
    Log    ${subscription_val1[1]}
    Should Contain    ${subscription_val1[1]}    %
#    Sleep    900s
    GET BACKGROUND COLOR    (${ep46973_transaction_value})[1]    ${earnestportal_color_gray3}

    ### VALIDATE REDEMPTION
    Wait Until Element Is Visible                   (${ep46973_transaction_value})[2]              ${wait_mid}
    ${redemption_val}         Get Text            ${ep46973_transaction_redemption_value}
    ${redemption_val1}        Split String        ${redemption_val}
    Log    ${redemption_val1[1]}
    Should Contain    ${redemption_val1[1]}    %
    GET BACKGROUND COLOR    (${ep46973_transaction_value})[2]    ${earnestportal_color_gray3}

    ### VALIDATE RSP
    Wait Until Element Is Visible                   (${ep46973_transaction_value})[3]              ${wait_mid}
    ${rsp_val}         Get Text            ${ep46973_transaction_rsp_value}
    ${rsp_val1}        Split String        ${rsp_val}
    Log    ${rsp_val1[1]}
    Should Contain    ${rsp_val1[1]}    %
    GET BACKGROUND COLOR    (${ep46973_transaction_value})[3]    ${earnestportal_color_gray3}
