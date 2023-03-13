*** Settings ***
Documentation       [Portal] Dashboard - Show data for Learn - Users who completed 1 lesson
Library             Selenium2Library
Library             DateTime
Library             ExcelLibrary

### KEYWORDS ###
Resource            ../../Resources/Keywords/EarnestPortal_46975_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/EarnestPortal_46975_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
46975 [Portal] Dashboard - Show data for Learn - Users who completed 1 lesson STEP 1
    [Documentation]
    ...     The numerical value of the total number of users who have completed at least 1 lesson should be visible.
    ...     - GIVEN a user is in the Learn section of the dashboard
    ...     - WHEN a user looks at "Total users who completed 1 lesson"
    ...     - THEN a user should see the total number of investors who have completed as least 1 lesson (See #1 on guide)
    ...     - AND the number of new users added for the current period as a numerical value (See #2 on guide)

    Scroll Element Into View            ${ep46975_top10lessons}
    Wait Until Element Is Visible       ${ep46975_totalnumofinvestorcompleted}      ${wait_short}
    Wait Until Element Is Visible       ${ep46975_newuseraddedcurrperiod}           ${wait_short}
    Capture Page Screenshot             Total num of investor completed and new user added.png

46975 [Portal] Dashboard - Show data for Learn - Users who completed 1 lesson STEP 2
    [Documentation]
    ...     There should be a comparison of the data to the previous period and to the target
    ...     - GIVEN a user is in the Learn section of the dashboard
    ...     - WHEN a user looks at "Total users who completed 1 lesson"
    ...     - THEN a user should see the percentage growth of new users versus the previous period (See #3 on guide)
    ...     - AND the percentage of progress left to target (See #5 on the image guide above)
    ...     - AND the target count (See #6 on the image guide above)

    Wait Until Element Is Visible       ${ep46975_percentnewuservspperiod}          ${wait_short}
    Wait Until Element Is Visible       ${ep46975_percentproglefttarget}            ${wait_short}
    Wait Until Element Is Visible       ${ep46975_targetcount}                      ${wait_short}
    Capture Page Screenshot             Percent vs period and precent progress left target and target count.png

46975 [Portal] Dashboard - Show data for Learn - Users who completed 1 lesson STEP 3
    [Documentation]
    ...     The progress or current achievement versus target should be visualized
    ...     - GIVEN a user is in the Learn section of the dashboard
    ...     - WHEN a user looks at "Total users who completed 1 lesson"
    ...     - THEN a user should see a bar graph showing the current achievement vs target where the blue bar is the previous count,
    ...     and the green bar is the new count of users in the selected period (See #4 on the image guide above)

    Wait Until Element Is Visible       ${ep46975_progressbar}      ${wait_short}
    Capture Page Screenshot             Bar graph.png

46975 [Portal] Dashboard - Show data for Learn - Users who completed 1 lesson STEP 4
    [Documentation]
    ...     Show a bubble on the graph when the user hovers on it
    ...     - GIVEN a user is in the Learn section of the dashboard
    ...     - WHEN user hovers on ANY point in the graph the bar graph
    ...     - THEN display a bubble that shows the new users added in a fixed area (follow the UI on Figma).

    Wait Until Element Is Visible       ${ep46975_progressbar}      ${wait_short}
    Mouse Over                          ${ep46975_progressbar}
    Capture Page Screenshot             Hover in Bar Graph.png