*** Settings ***
Documentation       [Portal] Dashboard - Setting dates to compare data
Library             Selenium2Library
Library             DateTime
Library             Collections

### KEYWORDS ###
Resource            ../../Resources/Keywords/EarnestPortal_46982_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/EarnestPortal_46982_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
46982 [Portal] Dashboard - Setting dates to compare data STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     The default metrics shown are for the current week
    ...     - GIVEN the Product Performance metrics
    ...     - WHEN the Product Performance metrics first load
    ...     - THEN the default date is set for the current week
    ...     - AND the week is from Monday to Sunday

    ### CHECK PERFORMANCE IS DEFAULT
    VALIDATE ELEMENT ATTRIBUTE VALUE        ${earnestportal_main_form}      ${earnestportal_id}     ${earnestportal_sidemenu_performance}

    Wait Until Element Is Visible               ${earnestportal_homepageheader_form}                    ${wait_long}
    CONVERTING DATE FROM WORDS TO NUMBERS
    Capture Page Screenshot                     Step 1.png

46982 [Portal] Dashboard - Setting dates to compare data STEP 2
    [Documentation]
    ...     *** Owner RJ ***
    ...     A user can change the date range of the data being displayed (See Case B)
    ...     - GIVEN a user
    ...     - WHEN a user is going through the Product Performance metrics
    ...     - THEN a user can choose the date range of the data being displayed from weekly or monthly or a custom date range
    ...     - AND the data displayed for all applicable metrics will change accordingly


    ### SAME PERIOD LAST WEEK
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_samelastweek}       ${ep46982_daterange_totalregistereduser_vsperiod}       ${ep46982_sameperiodlastweek}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_samelastweek}       ${ep46982_daterange_learnuserlesson_vsperiod}           ${ep46982_sameperiodlastweek}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_samelastweek}       ${ep46982_daterange_learninvestorlesson_vsperiod}       ${ep46982_sameperiodlastweek}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_samelastweek}       ${ep46982_daterange_activeinvestor_vsperiod}            ${ep46982_sameperiodlastweek}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_samelastweek}       ${ep46982_daterange_newinvestor_vsperiod}               ${ep46982_sameperiodlastweek}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_samelastweek}       ${ep46982_daterange_totaltransaction_vsperiod}          ${ep46982_sameperiodlastweek}

    ### SAME PERIOD LAST MONTH
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_samelastmonth}      ${ep46982_daterange_totalregistereduser_vsperiod}       ${ep46982_sameperiodlastmonth}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_samelastmonth}      ${ep46982_daterange_learnuserlesson_vsperiod}           ${ep46982_sameperiodlastmonth}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_samelastmonth}      ${ep46982_daterange_learninvestorlesson_vsperiod}       ${ep46982_sameperiodlastmonth}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_samelastmonth}      ${ep46982_daterange_activeinvestor_vsperiod}            ${ep46982_sameperiodlastmonth}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_samelastmonth}      ${ep46982_daterange_newinvestor_vsperiod}               ${ep46982_sameperiodlastmonth}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_samelastmonth}      ${ep46982_daterange_totaltransaction_vsperiod}          ${ep46982_sameperiodlastmonth}

    ### LAST/PREVIOUS PERIOD
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_previous}           ${ep46982_daterange_totalregistereduser_vsperiod}       ${ep46982_previousperiod}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_previous}           ${ep46982_daterange_learnuserlesson_vsperiod}           ${ep46982_previousperiod}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_previous}           ${ep46982_daterange_learninvestorlesson_vsperiod}       ${ep46982_previousperiod}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_previous}           ${ep46982_daterange_activeinvestor_vsperiod}            ${ep46982_previousperiod}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_previous}           ${ep46982_daterange_newinvestor_vsperiod}               ${ep46982_previousperiod}
    SELECTING SPECIFIC DATE RANGE               ${ep46982_daterange_previous}           ${ep46982_daterange_totaltransaction_vsperiod}          ${ep46982_previousperiod}

    Sleep    2s
    Capture Page Screenshot                     Step 2.png