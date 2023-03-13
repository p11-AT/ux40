*** Settings ***
Documentation       [Portal] Dashboard - Show data for Transactions - Transaction Summary
Library             Selenium2Library
Library             DateTime
Library             Collections

### KEYWORDS ###
Resource            ../../Resources/Keywords/EarnestPortal_46974_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/EarnestPortal_46974_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
46974 [Portal] Dashboard - Show data for Transactions - Transaction Summary STEP 2
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

    Wait Until Element Is Visible               ${earnestportal_homepageheader_form}                    ${wait_long}
    CLICKING BUTTON VISIBLE AND ENABLED         ${ep46974_thisweek_select}
    Wait Until Element Is Visible               ${ep46974_thisweek_form}                                ${wait_long}
    Wait Until Element Is Visible               ${ep46974_thisweek_form_container1}                     ${wait_long}
    Wait Until Element Is Visible               ${ep46974_thisweek_form_container2}                     ${wait_long}
    CLICKING BUTTON VISIBLE AND ENABLED         ${ep46974_thisweek_form_container1_customrange}
    Set Selenium Speed    1s
    ${date1}        Convert Date    2022/11/11      exclude_millis=yes      result_format=%d%m%Y
    Input Text    ${ep46974_thisweek_form_container1_customrange_fromdate}        ${date1}
    Set Selenium Speed    0s
    Capture Page Screenshot                     Select Custom range date
    Click Element                               ${ep46974_thisweek_form_container2_apply_btn}
    Sleep    2s
    Scroll Element Into View                    ${earnestportal_learn}
    Wait Until Element Is Visible               ${earnestportal_learn}              ${wait_long}
#    Wait Until Element Is Visible               ${ep46974_subscription_lbl}        ${wait_long}

    ### VALIDATING TRANSACTION SUMMARY STEPS METRICS
    ${ave_subscription_per_user}                Get Text        ${ep46974_ave_subscription_per_user_metrics}
    Wait Until Element Is Visible               ${ep46974_ave_subscription_per_user_metrics}        ${wait_short}
    Wait Until Element Is Visible               ${ep46974_ave_top_ups_per_user_metrics}             ${wait_short}
    Wait Until Element Is Visible               ${ep46974_ave_subscription_amount_metrics}          ${wait_short}
    Wait Until Element Is Visible               ${ep46974_ave_top_up_amount_metrics}                ${wait_short}
    Wait Until Element Is Visible               ${ep46974_ave_redemption_amount}                    ${wait_short}
    Element Text Should Not Be                  ${ep46974_ave_subscription_per_user_metrics}        ${EMPTY}
    Element Text Should Not Be                  ${ep46974_ave_top_ups_per_user_metrics}             ${EMPTY}
    Element Text Should Not Be                  ${ep46974_ave_subscription_amount_metrics}          ${EMPTY}
    Element Text Should Not Be                  ${ep46974_ave_top_up_amount_metrics}                ${EMPTY}
    Element Text Should Not Be                  ${ep46974_ave_redemption_amount}                    ${EMPTY}
    Capture Page Screenshot                     Transaction Summary Metrics.png

    ### VALIDATING TRANSACTION SUMMARY COMPARISON PERCENTAGE