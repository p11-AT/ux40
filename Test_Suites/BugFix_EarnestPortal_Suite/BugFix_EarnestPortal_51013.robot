*** Settings ***
Documentation       BUG SIT-Portal: [Dashboard] Incorrect font format for "Insights" and "vs"
Library             Selenium2Library
Library             DateTime
Library             ExcelLibrary

### KEYWORDS ###
Resource            ../../Resources/Keywords/BugFix_EarnestPortal_51013_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/BugFix_EarnestPortal_51013_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
51013 BUG SIT-Portal: [Dashboard] Incorrect font format for "Insights" and "vs" STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     Portal users should be able to use their P11 credentials to access the portal
    ...     - GIVEN a user
    ...     - WHEN a user is on the homepage
    ...     - THEN a user should see the Product Performance metrics

    ### CHECK PERFORMANCE IS DEFAULT
    VALIDATE ELEMENT ATTRIBUTE VALUE                    ${earnestportal_main_form}      ${earnestportal_id}     ${earnestportal_sidemenu_performance}
    Wait Until Element Is Visible                       ${earnestportal_homepageheader_form}                    ${wait_long}

    ### INSIGHTS FONT FORMAT
    VALIDATING GET TEXT VALUE                           ${earnestportal_homepageheader_form_insights}           Insights
    GET CSS STYLE VALUE                                 ${earnestportal_homepageheader_form_insights}           font-weight     500
    GET CSS STYLE VALUE                                 ${earnestportal_homepageheader_form_insights}           font-size       20px
    GET CSS STYLE VALUE                                 ${earnestportal_homepageheader_form_insights}           line-height     28px

    ### VS FONT FORMAT
    VALIDATING GET TEXT VALUE                           ${earnestportal_homepageheader_form_vs}                 vs
    GET CSS STYLE VALUE                                 ${earnestportal_homepageheader_form_vs}                 font-weight     400
    GET CSS STYLE VALUE                                 ${earnestportal_homepageheader_form_vs}                 font-size       12px
    GET CSS STYLE VALUE                                 ${earnestportal_homepageheader_form_vs}                 line-height     14.4px

    Capture Page Screenshot                             Bug fix for incorrect font format for Insights and VS.png