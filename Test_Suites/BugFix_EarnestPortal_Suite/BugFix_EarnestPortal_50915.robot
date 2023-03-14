*** Settings ***
Documentation       BUG SIT-Portal: [Navigation] Coming soon! tooltip is not in BOLD
Library             Selenium2Library
Library             DateTime
Library             ExcelLibrary

### KEYWORDS ###
Resource            ../../Resources/Keywords/BugFix_EarnestPortal_50915_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/BugFix_EarnestPortal_50915_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
50915 BUG SIT-Portal: [Navigation] Coming soon! tooltip is not in BOLD STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     Portal users should be able to use their P11 credentials to access the portal
    ...     - GIVEN a user
    ...     - WHEN a user is on the homepage
    ...     - THEN a user should see the Product Performance metrics

    VALIDATE ELEMENT ATTRIBUTE VALUE        ${earnestportal_main_form}      ${earnestportal_id}     ${earnestportal_sidemenu_performance}
    Capture Page Screenshot                 Performance Metrics.png

50915 BUG SIT-Portal: [Navigation] Coming soon! tooltip is not in BOLD STEP 2
    [Documentation]
    ...     *** Owner RJ ***
    ...     When locked modules on the menu are clicked, a "Coming Soon" bubble should be displayed (Figma: Case A)
    ...     - GIVEN a user
    ...     - WHEN a user clicks on a locked section
    ...     - THEN a user should see the "Coming Soon" bubble
    ...     -   Login to Earnest Portal
    ...     -   Hover to lock icon
    ...     -   Validate the tooltip

    HOVER SIDE MENU LOCK ICON ep50915       ${ep50915_lock_icon}        ${ep50915_lock_icon_tooltip2}       700
    Capture Page Screenshot                 Successfully Logged out.png