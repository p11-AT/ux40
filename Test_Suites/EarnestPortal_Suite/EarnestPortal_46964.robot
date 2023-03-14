*** Settings ***
Documentation       [Portal] Navigation of the portal sections
Library             Selenium2Library
Library             DateTime

### KEYWORDS ###
Resource            ../../Resources/Keywords/EarnestPortal_46964_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/EarnestPortal_46964_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
46964 [Portal] Navigation of the portal sections STEP 2
    [Documentation]
    ...     *** Owner RJ ***
    ...     Portal users should be able to use their P11 credentials to access the portal
    ...     - GIVEN a user
    ...     - WHEN a user is on the homepage
    ...     - THEN a user should see the Product Performance metrics

    VALIDATE ELEMENT ATTRIBUTE VALUE        ${earnestportal_main_form}      ${earnestportal_id}     ${earnestportal_sidemenu_performance}
    Capture Page Screenshot                 Performance Metrics.png

46964 [Portal] Navigation of the portal sections STEP 3
    [Documentation]
    ...     *** Owner RJ ***
    ...     When locked modules on the menu are clicked, a "Coming Soon" bubble should be displayed (Figma: Case A)
    ...     - GIVEN a user
    ...     - WHEN a user clicks on a locked section
    ...     - THEN a user should see the "Coming Soon" bubble

    HOVER SIDE MENU LOCK ICON               ${ep46964_lock_icon}
    Capture Page Screenshot                 Successfully Logged out.png