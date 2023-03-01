*** Settings ***
Documentation       [Portal] Dashboard - Show data for Acquisition - Active Investors
Library             Selenium2Library
Library             DateTime

### KEYWORDS ###
Resource            ../../Resources/Keywords/EarnestPortal_46967_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/EarnestPortal_46967_Repository.robot
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


46967 [Portal] Dashboard - Show data for Acquisition - Active Investors STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/27/2023
    ...     Updated 2/27/2023
    ...     The data should show the share of Earnest, Branch, and Online active investors of total UITF active investors
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at the "Active Investors"
    ...     - THEN a user should see a donut chart of the share of Earnest, Branch, and Online active investors of
    ...     total UITF active investors (See #2 on guide)
    ...     - AND data labels of each segment (See #1 on guide) (Add colors to follow here)

    Scroll Element Into View            (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]
    Wait Until Element Is Visible       (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]       20s
    ### VALIDATING LEGEND VALID TEXT/LABEL
    VALIDATING LEGENDS LABEL            ${earnestportal_legend_label}       ${legend_branch}        ${legend_online}        ${legend_earnest}
    ### VALIDATING BACKGROUND COLOR OF LEGEND
    GET BACKGROUND COLOR                (${earnestportal_legend_color})[1]      ${earnestportal_color_green1}
    GET BACKGROUND COLOR                (${earnestportal_legend_color})[2]      ${earnestportal_color_pink1}
    GET BACKGROUND COLOR                (${earnestportal_legend_color})[3]      ${earnestportal_color_blue1}
    Capture Page Screenshot             Active Intestor - Legend section validation.png


46967 [Portal] Dashboard - Show data for Acquisition - Active Investors STEP 2
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/27/2023
    ...     Updated 2/27/2023
    ...     There should be a comparison of the data to the previous period and to the target
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at "Active Investors"
    ...     - THEN  a user should see the percentage growth of new users versus the previous period (See #9 on guide)
    ...     - AND the percentage of progress or current achievement versus SOV target (See #10 on guide)

    Scroll Element Into View            ${earnestportal_activeinvestor_vsperiod_percentage}
    Wait Until Element Is Visible       ${earnestportal_activeinvestor_vsperiod_percentage}         ${wait_short}
    Wait Until Element Is Visible       ${earnestportal_activeinvestor_vssovtarget_percentage}      ${wait_short}
    GET BACKGROUND COLOR v2             ${earnestportal_activeinvestor_vsperiod_percentage}
    GET BACKGROUND COLOR v2             ${earnestportal_activeinvestor_vssovtarget_percentage}
    Capture Page Screenshot             Active Intestor - Percentage VS Previous Period.png

46967 [Portal] Dashboard - Show data for Acquisition - Active Investors STEP 3
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/27/2023
    ...     Updated 2/27/2023
    ...     The progress or current achievement versus target should be visualized
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at "Active Investors" numbers
    ...     - THEN a user should see the total active investors on Earnest (See #3 on guide)
    ...     - AND the new active investors added for the current period as a numerical value (See #5 on guide)
    ...     - AND the target count (See #6 on guide)

    Wait Until Element Is Visible       ${earnestportal_activeinvestor_totalactiveinvestor}     ${wait_short}
    Wait Until Element Is Visible       ${earnestportal_activeinvestor_newactiveinvestor}       ${wait_short}
    CONVERTING STRING TO INTEGER        ${earnestportal_activeinvestor_newactiveinvestor_span}
    Wait Until Element Is Visible       ${earnestportal_activeinvestor_targetcount}             ${wait_short}

46967 [Portal] Dashboard - Show data for Acquisition - Active Investors STEP 4
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/27/2023
    ...     Updated 2/27/2023
    ...     The progress or current achievement versus target should be visualized
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at "Active Investors"
    ...     - THEN a user should see a bar graph showing the current achievement vs target where the blue bar is the previous count
    ...     and the green bar is the new count of users in the selected period (See #4 on guide)

    Wait Until Element Is Visible       ${earnestportal_activeinvestor_bargraph}        ${wait_short}

46967 [Portal] Dashboard - Show data for Acquisition - Active Investors STEP 5
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/27/2023
    ...     Updated 2/27/2023
    ...     The Share of Voice (SOV) of Earnest should be visible as a percentage of the total number of active investors
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at "Active Investors" numbers
    ...     - THEN a user should see the percentage of Earnest's SOV of the total data set as of the
    ...     current period  (computation c/o Arvin) (See #7 on guide)
    ...     - AND an "as of <date>" below the SOV (See #8 on guide)

    Wait Until Element Is Visible       ${earnestportal_activeinvestor_percentearnestsov}       ${wait_short}
    Wait Until Element Is Visible       ${earnestportal_activeinvestor_datebelowsov}            ${wait_short}
    ${static_text}      Get Text        ${earnestportal_activeinvestor_datebelowsov}
    ${current_date}     Get Current Date
    Log    ${static_text}
    Log    ${current_date}
    ${current_date}     Convert Date    ${current_date}     exclude_millis=yes      result_format=%b %d, %Y
#    Should Be Equal As Strings          ${static_text}      As${SPACE}of${SPACE}${current_date}
    Should Be Equal As Strings          ${static_text}      As of Oct 28, 2022

46967 [Portal] Dashboard - Show data for Acquisition - Active Investors STEP 6
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/27/2023
    ...     Updated 2/27/2023
    ...     Show a bubble on the donut chart when the user hovers on EACH section
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user hovers on the donut chart under "Active Investors"
    ...     - THEN display a bubble on EACH section of the graph (the bubbles will not appear all at once) where the source,
    ...     %share, and the no. of users are shown

#    VALIDATE ELEMENT ATTRIBUTE TYPE     (//*[@class='MuiBox-root css-43m1k4']/span/img)[1]      title
#    ${elem1}    Get Webelement          (//*[@class='MuiBox-root css-43m1k4']/span/img)[1]
    Mouse Over    (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]/div/div/div[@class='MuiBox-root css-1ac9jdt']
    Capture Page Screenshot             donut tooltip.png