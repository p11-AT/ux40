*** Settings ***
Documentation       BUG SIT-Portal: [Dashboard] Incorrect font format is used for  "This week" and "Previous Period"
Library             Selenium2Library
Library             DateTime
Library             ExcelLibrary

### KEYWORDS ###
Resource            ../../Resources/Keywords/BugFix_EarnestPortal_51003_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/BugFix_EarnestPortal_51003_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
51003 BUG SIT-Portal: [Dashboard] Incorrect font format is used for "This week" and "Previous Period" STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     Portal users should be able to use their P11 credentials to access the portal
    ...     - GIVEN a user
    ...     - WHEN a user is on the homepage
    ...     - THEN a user should see the Product Performance metrics

    ### CHECK PERFORMANCE IS DEFAULT
    VALIDATE ELEMENT ATTRIBUTE VALUE            ${earnestportal_main_form}      ${earnestportal_id}     ${earnestportal_sidemenu_performance}
    Wait Until Element Is Visible               ${earnestportal_homepageheader_form}                    ${wait_long}

    ### THIS WEEK P TAG FIX
    GET CSS STYLE VALUE                         ${ep51003_thisweek_select}          font-weight     700
    GET CSS STYLE VALUE                         ${ep51003_thisweek_select}          font-size       12px
    GET CSS STYLE VALUE                         ${ep51003_thisweek_select}          line-height     14.4px
    Capture Page Screenshot                     Bug fix for This Week date range Mon to Sun.png

    ### THIS WEEK P TAG FIX
    GET CSS STYLE VALUE                         ${ep51003_previousweek_select}      font-weight     700
    GET CSS STYLE VALUE                         ${ep51003_previousweek_select}      font-size       12px
    GET CSS STYLE VALUE                         ${ep51003_previousweek_select}      line-height     14.4px

    Capture Page Screenshot                     Bug fix for Previous Week date range Mon to Sun.png