*** Settings ***
Documentation       [Portal] Log out rules
Library             Selenium2Library
Library             DateTime

### KEYWORDS ###
Resource            ../../Resources/Keywords/EarnestPortal_46963_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/EarnestPortal_46963_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
46963 [Portal] Log out rules STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     Portal users should be able to use their P11 credentials to access the portal
    ...     - GIVEN a user
    ...     - WHEN a user logs in to the portal with their P11 credentials
    ...     - THEN a user should be able to successfully log into the portal

    Wait Until Element Is Visible           ${earnestportal_logout_btn}                 ${wait_long}
    Click Element                           ${earnestportal_logout_btn}
    Wait Until Element Is Not Visible       ${earnestportal_logout_btn}                 ${wait_long}
    Wait Until Element Is Not Visible       ${earnestportal_ep_img}                     ${wait_long}
    Wait Until Element Is Not Visible       ${earnestportal_homepageheader_form}        ${wait_long}
    Wait Until Element Is Not Visible       ${earnestportal_homepagesidepanel_form}     ${wait_long}
    Wait Until Element Is Not Visible       ${earnestportal_main_form}                  ${wait_long}
    Wait Until Element Is Visible           ${earnestportal_microsoft1}                 ${wait_long}
    Wait Until Element Is Visible           ${earnestportal_microsoft_list_user}        ${wait_long}
    Sleep    1s
    Capture Page Screenshot                 Successfully Logged out.png