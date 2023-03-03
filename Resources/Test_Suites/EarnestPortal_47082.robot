*** Settings ***
Documentation       [Portal] Dashboard - SOV tooltips
Library             Selenium2Library
Library             DateTime
Library             ExcelLibrary

### KEYWORDS ###
Resource            ../../Resources/Keywords/EarnestPortal_47082_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/EarnestPortal_47082_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
47082 LOGGING IN EARNEST PORTAL
    [Documentation]
    ...     *** Owner RJ ***
    ...     3/2/2023

    Wait Until Element Is Visible       ${earnestportal_login_btn}     ${wait_mid}
    Click Element                       ${earnestportal_login_btn}
    Capture Page Screenshot             Logging In.png

    Log    ${test_data_path}
    Get Test Data From Excel v3         4

47082 VERIFYING CREDENTIAL AND TWO WAY FACTOR AUTHORIZATION
    [Documentation]
    ...     *** Owner RJ ***
    ...     3/2/2023

    MANAGING POP UP LOGIN SYSTEM WITH TWO WAY FACTOR AUTHENTICATION     ${earnestportal_msteamsverificationcode_option2}

47082 [Portal] Dashboard - SOV tooltips STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 3/2/2023
    ...     Updated 3/2/2023
    ...     Show a tooltip when the user hovers on an Earnest SOV tooltip
    ...     - GIVEN a user is on the Dashboard
    ...     - WHEN a user hovers on an Earnest SOV tooltip
    ...     - THEN show a tooltip bubble with the message "Earnest % share vs all new ___ clients" where ___ will depend on the section
    ...     - Note: Tooltips bubbles will not appear all at once

    ### ACTIVE INVESTOR TOOLTIP VALIDATION
    Scroll Element Into View            ${earnestportal_activeinvestor_form}
    Wait Until Element Is Visible       ${earnestportal_activeinvestor_form}                ${wait_short}
    Mouse Over                          ${ep47082_tooltip_activeinvestor_btn}
    ${tooltip_actinvestorval}           Get Text        ${ep47082_tooltip_value}
    Should Be Equal As Strings          ${ep47082_tooltip_value_1}                          ${tooltip_actinvestorval}
    Capture Page Screenshot             Active Investor Tooltip validation.png

    ### NEW INVESTOR TOOLTIP VALIDATION
    Scroll Element Into View            ${earnestportal_newinvestor_form}
    Wait Until Element Is Visible       ${earnestportal_newinvestor_form}                   ${wait_short}
    Mouse Over                          ${ep47082_tooltip_newinvestor_btn}
    ${tooltip_newinvestorval}           Get Text        ${ep47082_tooltip_value}
    Should Be Equal As Strings          ${ep47082_tooltip_value_2}                          ${tooltip_newinvestorval}
    Capture Page Screenshot             New Investor Tooltip validation.png

    ### TOTAL TRANSACTION TOOLTIP VALIDATION
    Scroll Element Into View            ${earnestportal_totaltransaction_form}
    Wait Until Element Is Visible       ${earnestportal_totaltransaction_form}              ${wait_short}
    Mouse Over                          ${ep47082_tooltip_totaltransaction_btn}
    ${tooltip_totaltransaction}         Get Text        ${ep47082_tooltip_value}
    Should Be Equal As Strings          ${ep47082_tooltip_value_1}                          ${tooltip_totaltransaction}
    Capture Page Screenshot             Total Transaction Tooltip validation.png