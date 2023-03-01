*** Settings ***
Documentation       [Portal] Dashboard - Show data for Acquisition - New Investors
Library             Selenium2Library
Library             DateTime
Library             ExcelLibrary

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
46969 LOGGING IN EARNEST PORTAL
    [Documentation]
    ...     *** Owner RJ ***
    ...     2/23/2023

    Wait Until Element Is Visible       ${earnestportal_login_btn}     ${wait_mid}
    Click Element                       ${earnestportal_login_btn}
    Capture Page Screenshot             Logging In.png

46969 VERIFYING CREDENTIAL AND TWO WAY FACTOR AUTHORIZATION
    [Documentation]
    ...     *** Owner RJ ***
    ...     2/23/2023

    MANAGING POP UP LOGIN SYSTEM WITH TWO WAY FACTOR AUTHENTICATION

46969 [Portal] Dashboard - Show data for Acquisition - New Investors STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/28/2023
    ...     Updated 2/28/2023
    ...     The New Investors data should be visualized as a donut chart to show the share of new investors from Earnest, Personal, and
    ...     Institutional channels
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at the New Investors numbers
#    ...     - THEN a user should see a donut chart of the share of Earnest, Branch, and TBG new investors (See #2 on guide)
    ...     - AND data labels of each data segment is visible in a Legend (See #1 on guide)

    Scroll Element Into View            (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]
    Wait Until Element Is Visible       (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[1]       20s
    ### VALIDATING LEGEND VALID TEXT/LABEL
    VALIDATING LEGENDS LABEL            ${ep46969_legend_label}        ${legend_branch}        ${legend_earnest}       ${legend_tbg}
    ### VALIDATING BACKGROUND COLOR OF LEGEND
    GET BACKGROUND COLOR                (${ep46969_legend_color})[1]      ${earnestportal_color_blue1}
    GET BACKGROUND COLOR                (${ep46969_legend_color})[2]      ${earnestportal_color_brown1}
    GET BACKGROUND COLOR                (${ep46969_legend_color})[3]      ${earnestportal_color_gray2}
    Capture Page Screenshot             New Investors - Legend section validation.png

46969 [Portal] Dashboard - Show data for Acquisition - New Investors STEP 2
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/28/2023
    ...     Updated 2/28/2023
    ...     There should be a comparison of the data to the previous period and to the target
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at "New Investors"
    ...     - THEN a user should see the percentage growth of new users versus the previous period (See #9 on guide)
    ...     - AND the percentage of progress or current achievement versus SOV target (See #10 on guide)

    Scroll Element Into View            ${ep46969_newinvestor_vsperiod_percentage}
    Wait Until Element Is Visible       ${ep46969_newinvestor_vsperiod_percentage}          ${wait_short}
    Wait Until Element Is Visible       ${ep46969_newinvestor_vssovtarget_percentage}       ${wait_short}
    GET BACKGROUND COLOR v2             ${ep46969_newinvestor_vsperiod_percentage}
    GET BACKGROUND COLOR v2             ${ep46969_newinvestor_vssovtarget_percentage}
    Capture Page Screenshot             New Investors - Percentage VS Previous Period.png

46969 [Portal] Dashboard - Show data for Acquisition - New Investors STEP 3
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/28/2023
    ...     Updated 2/28/2023
    ...     The progress or current achievement on Earnest versus the annual target should be visualized
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at "New Investors" numbers
    ...     - THEN a user should see the total new investors on Earnest (See #3 on guide)
    ...     - AND the new active investors added for the current period as a numerical value (See #5 on guide)

    Wait Until Element Is Visible       ${ep46969_newinvestor_totalactiveinvestor}     ${wait_short}
    Wait Until Element Is Visible       ${ep46969_newinvestor_newactiveinvestor}       ${wait_short}
    CONVERTING STRING TO INTEGER        ${ep46969_newinvestor_newactiveinvestor_span}
    # #6
    Wait Until Element Is Visible       ${ep46969_newinvestor_targetcount}             ${wait_short}
    Capture Page Screenshot             total new investor and added active investor.png

46969 [Portal] Dashboard - Show data for Acquisition - New Investors STEP 4
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/28/2023
    ...     Updated 2/28/2023
    ...     The progress or current achievement versus target should be visualized
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at "New Investors"
#    ...     - THEN a user should see a bar graph showing the current achievement vs target where the blue bar is the previous count and
    ...     the green bar is the new count of users in the selected period (See #4 on guide)

    Wait Until Element Is Visible       ${earnestportal_activeinvestor_bargraph}        ${wait_short}
    Capture Page Screenshot             bar graph.png

46969 [Portal] Dashboard - Show data for Acquisition - New Investors STEP 5
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/28/2023
    ...     Updated 2/28/2023
    ...     The Share of Voice (SOV) of Earnest should be visible as a percentage of the total number of new investors
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at "New Investors" numbers
    ...     - THEN a user should see the percentage of Earnest's SOV of the total data set as of the
    ...     current period (computation c/o Arvin) (See #7 on guide)
    ...     - AND an "as of <date>" below the SOV (See #8 on guide)

    Wait Until Element Is Visible       ${ep46969_newinvestor_percentearnestsov}       ${wait_short}
    Wait Until Element Is Visible       ${ep46969_newinvestor_datebelowsov}            ${wait_short}
    ${static_text}      Get Text        ${ep46969_newinvestor_datebelowsov}
    ${current_date}     Get Current Date
    Log    ${static_text}
    Log    ${current_date}
    ${current_date}     Convert Date    ${current_date}     exclude_millis=yes      result_format=%b %d, %Y
#    Should Be Equal As Strings          ${static_text}      As${SPACE}of${SPACE}${current_date}
    Should Be Equal As Strings          ${static_text}      As of Nov 2022
    Capture Page Screenshot             percentage earnest SOV and date as of.png

46969 [Portal] Dashboard - Show data for Acquisition - New Investors STEP 6
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/28/2023
    ...     Updated 2/28/2023
    ...     Show a bubble every time the user hovers on EACH section of the donut chart
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user hovers on the donut chart under "New Investors"
    ...     - THEN display a bubble on EACH section of the graph (the bubbles will not appear all at once) where the source,
    ...     %share, and the no. of users are shown

    Mouse Over    (//*/*/*[@class='MuiGrid-root MuiGrid-container css-1d3bbye'])[2]/div/div/div[@class='MuiBox-root css-1ac9jdt']
    Capture Page Screenshot             donut tooltip.png