*** Settings ***
Documentation       [Portal] Design Debt: Comparison Value Appearances
Library             Selenium2Library
Library             DateTime
Library             ExcelLibrary

### KEYWORDS ###
Resource            ../../Resources/Keywords/EarnestPortal_52599_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/EarnestPortal_52599_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
52599 LOGGING IN EARNEST PORTAL
    [Documentation]
    ...     *** Owner RJ ***
    ...     3/3/2023

    Wait Until Element Is Visible       ${earnestportal_login_btn}     ${wait_mid}
    Click Element                       ${earnestportal_login_btn}
    Capture Page Screenshot             Logging In.png

    Log    ${test_data_path}
    Get Test Data From Excel v3         4

52599 VERIFYING CREDENTIAL AND TWO WAY FACTOR AUTHORIZATION
    [Documentation]
    ...     *** Owner RJ ***
    ...     3/3/2023

    MANAGING POP UP LOGIN SYSTEM WITH TWO WAY FACTOR AUTHENTICATION     ${earnestportal_msteamsverificationcode_option2}

52599 [Portal] Design Debt: Comparison Value Appearances STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 3/3/2023
    ...     Updated 3/3/2023
    ...     Positive (+) difference/% change of current/chosen period vs previous period
    ...     - GIVEN a user who is viewing the performance monitoring dashboard of Earnest Portal
    ...     - WHEN user chooses any comparison of metrics vs previous period AND the current period value is greater than that of the previous period
    ...     - THEN user should see the + sign in the change value
    ...     - AND the change value should be colored green

    Wait Until Element Is Visible           ${earnestportal_main_form}              ${wait_long}
    VALIDATE ELEMENT ATTRIBUTE VALUE        ${earnestportal_main_form}      ${earnestportal_id}     ${earnestportal_sidemenu_performance}
    Scroll Element Into View                ${ep52599_colored_green}
    Wait Until Element Is Visible           ${ep52599_colored_green}                ${wait_short}
    GET BACKGROUND COLOR v2                 ${ep52599_colored_green}                ${earnestportal_color_green2}

52599 [Portal] Design Debt: Comparison Value Appearances STEP 2
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 3/3/2023
    ...     Updated 3/3/2023
    ...     Negative (+) difference/% change of current/chosen period vs previous period
    ...     - GIVEN a user who is viewing the performance monitoring dashboard of Earnest Portal
    ...     - WHEN user chooses any comparison of metrics vs previous period AND the current period value is less than that of the previous period
    ...     - THEN user should see the - sign in the change value
    ...     - AND the change value should be colored red

    Scroll Element Into View                ${ep52599_colored_red_vsperiod_percentage}
    Wait Until Element Is Visible           ${ep52599_colored_red_vsperiod_percentage}             ${wait_short}
    GET BACKGROUND COLOR v2                 ${ep52599_colored_red_vsperiod_percentage}             ${earnestportal_color_red1}

52599 [Portal] Design Debt: Comparison Value Appearances STEP 3
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 3/3/2023
    ...     Updated 3/3/2023
    ...     Negative (+) difference/% change of current/chosen period vs previous period
    ...     - GIVEN a user who is viewing the performance monitoring dashboard of Earnest Portal
    ...     - WHEN user chooses any comparison of metrics vs previous period AND the current period value is less than that of the previous period
    ...     - THEN user should see the - sign in the change value
    ...     - AND the change value should be colored red

    Scroll Element Into View                ${ep52599_colored_gray_activeinvestor_vsperiod_percentage}
    Wait Until Element Is Visible           ${ep52599_colored_gray_activeinvestor_vsperiod_percentage}             ${wait_short}
    GET BACKGROUND COLOR v2                 ${ep52599_colored_gray_activeinvestor_vsperiod_percentage}             ${earnestportal_color_gray1}

52599 [Portal] Design Debt: Comparison Value Appearances STEP 4
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 3/3/2023
    ...     Updated 3/3/2023
    ...     Negative (+) difference/% change of current/chosen period vs previous period
    ...     - GIVEN a user who is viewing the performance monitoring dashboard of Earnest Portal
    ...     - WHEN user chooses any comparison of metrics vs previous period AND the current period value is less than that of the previous period
    ...     - THEN user should see the - sign in the change value
    ...     - AND the change value should be colored red

    Scroll Element Into View                ${ep52599_colored_gray_activeinvestor_vsperiod_percentage}
    Wait Until Element Is Visible           ${ep52599_colored_gray_activeinvestor_vsperiod_percentage}             ${wait_short}
    GET BACKGROUND COLOR v2                 ${ep52599_colored_gray_activeinvestor_vsperiod_percentage}             ${earnestportal_color_gray1}