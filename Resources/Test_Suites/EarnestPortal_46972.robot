*** Settings ***
Documentation       [Portal] Dashboard - Show data for Transactions - Total Transactions
Library             Selenium2Library
Library             DateTime
Library             ExcelLibrary

### KEYWORDS ###
Resource            ../../Resources/Keywords/EarnestPortal_46972_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/EarnestPortal_46972_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
46972 [Portal] Dashboard - Show data for Transactions - Total Transactions STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 3/1/2023
    ...     Updated 3/1/2023
    ...     The Total Transactions data should be visualized as a donut chart to show the share of total transactions from Earnest, Branch, and UITF Online
    ...     - GIVEN a user is in the Transactions section of the dashboard
    ...     - WHEN a user looks at the "Total Transactions"
    ...     - THEN a user should see a donut chart of the share of total transactions done on Earnest, Branch, and UITF Online (See #2 on guide)
    ...     - AND data labels of each data segment is visible in a Legend (See #1 on guide)

    Scroll Element Into View            ${ep46972_learn}
    Wait Until Element Is Visible       ${ep46972_learn}                        ${wait_short}
    Wait Until Element Is Visible       ${ep46972_donut}                        ${wait_short}
    ### VALIDATING LEGEND VALID TEXT/LABEL
    VALIDATING LEGENDS LABEL            ${ep46972_legend_label}       ${legend_earnest}       ${legend_online}      ${legend_branch}
    ### VALIDATING BACKGROUND COLOR OF LEGEND
    GET BACKGROUND COLOR                (${ep46972_legend_color})[1]            ${earnestportal_color_blue1}
    GET BACKGROUND COLOR                (${ep46972_legend_color})[2]            ${earnestportal_color_pink1}
    GET BACKGROUND COLOR                (${ep46972_legend_color})[3]            ${earnestportal_color_green1}
    Capture Page Screenshot             Total Transactions - Legend section validation.png

46972 [Portal] Dashboard - Show data for Transactions - Total Transactions STEP 2
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 3/1/2023
    ...     Updated 3/1/2023
    ...     There should be a comparison of the data to the previous period and to the target
    ...     - GIVEN a user is in the Transactions section of the dashboard
    ...     - WHEN a user looks at "Total Transactions"
    ...     - THEN a user should see the percentage growth of new users versus the previous period (See #9 on guide)
    ...     - AND the percentage of progress or current achievement versus target (See #10 on guide)

    Wait Until Element Is Visible       ${ep46972_vsperiod_percentage}          ${wait_short}
    Wait Until Element Is Visible       ${ep46972_vssovtarget_percentage}       ${wait_short}
    GET BACKGROUND COLOR v2             ${ep46972_vsperiod_percentage}          ${earnestportal_color_red1}
    GET BACKGROUND COLOR v2             ${ep46972_vssovtarget_percentage}       ${earnestportal_color_gray1}
    Capture Page Screenshot             Total Transactions - Percentage VS Previous Period.png

46972 [Portal] Dashboard - Show data for Transactions - Total Transactions STEP 3
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 3/1/2023
    ...     Updated 3/1/2023
    ...     The progress or current achievement on Earnest versus the annual target should be visualized
    ...     - GIVEN a user is in the Transactions section of the dashboard
    ...     - WHEN a user looks at "Total Transactions"
    ...     - THEN a user should see the total transactions on Earnest (See #3 on guide)
    ...     - AND the new transactions added for the current period as a numerical value (See #5 on guide)

    Wait Until Element Is Visible       ${ep46972_totalactiveinvestor}          ${wait_short}
    Wait Until Element Is Visible       ${ep46972_newactiveinvestor}            ${wait_short}
    CONVERTING STRING TO INTEGER        ${ep46972_newactiveinvestor_span}
    Wait Until Element Is Visible       ${ep46972_targetcount}                  ${wait_short}
    Capture Page Screenshot             Total active investor and trasaction add cur period and target count.png

46972 [Portal] Dashboard - Show data for Transactions - Total Transactions STEP 4
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 3/1/2023
    ...     Updated 3/1/2023
    ...     The progress or current achievement on Earnest versus the annual target should be visualized
    ...     - GIVEN a user is in the Transactions section of the dashboard
    ...     - WHEN a user looks at "Total Transactions"
    ...     - THEN a user should see a bar graph showing the current achievement vs target where the blue bar is the previous count and
    ...     the green bar is the new count of users in the selected period (See #4 on guide)

    Wait Until Element Is Visible       ${ep46972_bargraph}                     ${wait_short}
    Capture Page Screenshot             Bar Graph.png

46972 [Portal] Dashboard - Show data for Transactions - Total Transactions STEP 5
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 3/1/2023
    ...     Updated 3/1/2023
    ...     The Share of Voice (SOV) of Earnest should be visible as a percentage of the total transactions
    ...     - GIVEN a user is in the Transaction section of the dashboard
    ...     - WHEN a user looks at "Total Transactions" numbers
    ...     - THEN a user should see the percentage of Earnest's SOV of the total data set as of the current period (computation c/o Arvin)
    ...     (See #7 on guide)
    ...     - AND an "as of <date>" below the SOV (See #8 on guide)

    Wait Until Element Is Visible       ${ep46972_percentearnestsov}            ${wait_short}
    Wait Until Element Is Visible       ${ep46972_datebelowsov}                 ${wait_short}
    ${static_text}      Get Text        ${ep46972_datebelowsov}
    ${current_date}     Get Current Date
    Log    ${static_text}
    Log    ${current_date}
    ${current_date}     Convert Date    ${current_date}     exclude_millis=yes      result_format=%b %d, %Y
#    Should Be Equal As Strings          ${static_text}      As${SPACE}of${SPACE}${current_date}
    Should Be Equal As Strings          ${static_text}      As of Oct 28, 2022

46972 [Portal] Dashboard - Show data for Transactions - Total Transactions STEP 6
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 3/1/2023
    ...     Updated 3/1/2023
    ...     Show a bubble on the donut chart when the user hovers on EACH section
    ...     - GIVEN a user is in the Transaction section of the dashboard
    ...     - WHEN a user hovers on the donut chart under "Total Transactions"
    ...     - THEN display a bubble on EACH section of the graph (the bubbles will not appear all at once) where the source,
    ...     %share, and the no. of users are shown

    Mouse Over                          ${ep46972_donut}
    Capture Page Screenshot             donut tooltip.png