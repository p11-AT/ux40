*** Settings ***
Documentation       BUG SIT-Portal: [Dashboard] Incomplete option is displayed for Previous period selection if "This week" is selected
Library             Selenium2Library
Library             DateTime
Library             ExcelLibrary

### KEYWORDS ###
Resource            ../../Resources/Keywords/BugFix_EarnestPortal_51007_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/BugFix_EarnestPortal_51007_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
51007 BUG SIT-Portal: [Dashboard] Incomplete option is displayed for Previous period selection if "This week" is selected STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     Portal users should be able to use their P11 credentials to access the portal
    ...     - GIVEN a user
    ...     - WHEN a user is on the homepage
    ...     - THEN a user should see the Product Performance metrics

    ### CHECK PERFORMANCE IS DEFAULT
    VALIDATE ELEMENT ATTRIBUTE VALUE                    ${earnestportal_main_form}      ${earnestportal_id}     ${earnestportal_sidemenu_performance}
    Wait Until Element Is Visible                       ${earnestportal_homepageheader_form}                    ${wait_long}

    Click Element                                       ${ep51007_previousweek_date_range}
    VALIDATING OPTIONS FOR DATE RANGE FOR PERIODS       ${ep51007_daterange_for_periods}

    Capture Page Screenshot                             Bug fix for date range period options.png