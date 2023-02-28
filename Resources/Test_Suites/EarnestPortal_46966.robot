*** Settings ***
Library         Selenium2Library
Library         DateTime

### KEYWORDS ###
Resource        ../../Resources/Keywords/EarnestPortal_46966_Keyword.robot
Resource        ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource        ../../Resources/Repository/EarnestPortal_46966_Repository.robot
Resource        ../../Resources/Repository/Login_Repository.robot
Resource        ../../Resources/Repository/Common_Repository.robot

Suite Setup     Opening Browser         ${url_earnest_portal}     ${browser_chrome}
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


46966 [Portal] Dashboard - Show data for Acquisition - Total Registered STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/27/2023
    ...     Updated 2/27/2023
    ...     The Total Registered Users data should show the total cumulative number of registered Earnest users since launch
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at the "Total Registered Users"
    ...     - THEN a user should see the numerical value of the total number of registered Earnest users (See #1 on the image guide above)
    ...     - AND the number of new users added for the current period as a numerical value (See #2 on the image guide above)
    
    Scroll Element Into View            ${ep46966_acquisition_target}
    Wait Until Element Is Visible       ${ep46966_acquisition_target}                   ${wait_short}
    Wait Until Element Is Visible       ${ep46966_acquisition_totalregitereduser}       ${wait_short}
    Capture Page Screenshot             Total registered user.png

46966 [Portal] Dashboard - Show data for Acquisition - Total Registered STEP 2
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/27/2023
    ...     Updated 2/27/2023
    ...     There should be a comparison of the data to the previous period and to the target
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at "Total Registered Users"
    ...     - THEN a user should see the percentage growth of new users versus the previous period (See #3 on the image guide above)
    ...     - AND the percentage of progress left to target (See #5 on the image guide above)
    ...     - AND the target count (See #6 on the image guide above)

    Wait Until Element Is Visible       ${ep46966_acquisition_percentgrowthnewuser}         ${wait_short}
    Wait Until Element Is Visible       ${ep46966_acquisition_percentproglefttotartget}     ${wait_short}
    Wait Until Element Is Visible       ${ep46966_acquisition_targetcount}                  ${wait_short}

46966 [Portal] Dashboard - Show data for Acquisition - Total Registered STEP 3
    [Documentation]
    ...     *** Owner RJ ***
    ...     Created 2/28/2023
    ...     Updated 2/28/2023
    ...     The progress or current achievement versus target should be visualized
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at "Total Registered Users"
    ...     - THEN a user should see a bar graph showing the current achievement vs target where the blue bar is the previous count and
    ...     the green bar is the new count of users in the selected period (See #4 on the image guide above)

    Wait Until Element Is Visible       ${ep46966_acquisition_bargraphusercount}            ${wait_short}

#46966 [Portal] Dashboard - Show data for Acquisition - Total Registered STEP 4
#    [Documentation]
#    ...     *** Owner RJ ***
#    ...     Created 2/27/2023
#    ...     Updated 2/27/2023
#    ...     Show a bubble on the graph when the user hovers on it
#    ...     - GIVEN a user is in the Acquisition section of the dashboard
#    ...     - WHEN user hovers on ANY point in the graph the bar graph
#    ...     - THEN display a bubble that shows the new users added in a fixed area (follow the UI on Figma).
#
#