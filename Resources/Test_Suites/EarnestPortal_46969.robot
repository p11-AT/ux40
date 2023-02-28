*** Settings ***
Documentation       [Portal] Dashboard - Show data for Acquisition - New Investors
Library             Selenium2Library
Library             DateTime

### KEYWORDS ###
Resource            ../../Resources/Keywords/EarnestPortal_46969_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/EarnestPortal_46969_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
LOGGING IN EARNEST PORTAL
    [Documentation]
    ...     *** Owner RJ ***
    ...     2/23/2023

    Wait Until Element Is Visible       ${earnestportal_login_btn}     ${wait_mid}
    Click Element                       ${earnestportal_login_btn}
    Capture Page Screenshot             Logging In.png

VERIFYING CREDENTIAL AND TWO WAY FACTOR AUTHORIZATION
    [Documentation]
    ...     *** Owner RJ ***
    ...     2/23/2023

    MANAGING POP UP LOGIN SYSTEM WITH TWO WAY FACTOR AUTHENTICATION
#    Scroll Element Into View    (//table)[1]
#    Capture Page Screenshot             bottom page.png


46967 [Portal] Dashboard - Show data for Acquisition - New Investors STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/27/2023
    ...     Updated 2/27/2023
    ...     The New Investors data should be visualized as a donut chart to show the share of new investors from Earnest, Personal, and
    ...     Institutional channels
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at the New Investors numbers
    ...     - THEN a user should see a donut chart of the share of Earnest, Branch, and TBG new investors (See #2 on guide)
    ...     - AND data labels of each data segment is visible in a Legend (See #1 on guide)

    Scroll Element Into View            (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]
    Wait Until Element Is Visible       (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]       20s
    ### VALIDATING LEGEND VALID TEXT/LABEL
    VALIDATING LEGENDS LABEL            ${ep46969_legend_label}        ${legend_branch}        ${legend_earnest}       ${legend_tbg}
    ### VALIDATING BACKGROUND COLOR OF LEGEND
    GET BACKGROUND COLOR                (${ep46969_legend_color})[1]      ${earnestportal_color_blue1}
    GET BACKGROUND COLOR                (${ep46969_legend_color})[2]      ${earnestportal_color_brown1}
    GET BACKGROUND COLOR                (${ep46969_legend_color})[3]      ${earnestportal_color_gray2}
    Capture Page Screenshot             Active Intestor - Legend section validation.png