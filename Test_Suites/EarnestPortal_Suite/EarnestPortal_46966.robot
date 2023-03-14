*** Settings ***
Documentation       [Portal] Dashboard - Show data for Acquisition - Total Registered
Library             Selenium2Library
Library             DateTime

### KEYWORDS ###
Resource            ../../Resources/Keywords/EarnestPortal_46966_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/EarnestPortal_46966_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
46966 [Portal] Dashboard - Show data for Acquisition - Total Registered STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     The Total Registered Users data should show the total cumulative number of registered Earnest users since launch
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at the "Total Registered Users"
    ...     - THEN a user should see the numerical value of the total number of registered Earnest users (See #1 on the image guide above)
    ...     - AND the number of new users added for the current period as a numerical value (See #2 on the image guide above)
    
    Scroll Element Into View            ${ep46966_acquisition_target}
    Wait Until Element Is Visible       ${ep46966_acquisition_target}                   ${wait_short}

    ### VALIDATING total number of registered Earnest users
    VALIDATING TEXT IS IN NUMERIC VALUE     ${ep46966_acquisition_totalregitereduser}
#    46966 GETTING FONT WEIGH, FONT SIZE AND LINE HEIGHT OF ELEMENT        ${ep46966_acquisition_totalregitereduser}       32px        600     44.8px
    Capture Page Screenshot                 Total registered user.png

    ### VALIDATING total number of registered Earnest users
    VALIDATING TEXT IS IN NUMERIC VALUE     ${ep46966_acquisition_percentgrowthnewuser}
#    46966 GETTING FONT WEIGH, FONT SIZE AND LINE HEIGHT OF ELEMENT        ${ep46966_acquisition_percentgrowthnewuser}       14px        700     16.8px
    GET CSS STYLE VALUE                     ${ep46966_acquisition_percentgrowthnewuser}    color        ${earnestportal_color_green2}
    Capture Page Screenshot                 New user added.png

46966 [Portal] Dashboard - Show data for Acquisition - Total Registered STEP 2
    [Documentation]
    ...     *** Owner RJ ***
    ...     There should be a comparison of the data to the previous period and to the target
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at "Total Registered Users"
    ...     - THEN a user should see the percentage growth of new users versus the previous period (See #3 on the image guide above)
    ...     - AND the percentage of progress left to target (See #5 on the image guide above)
    ...     - AND the target count (See #6 on the image guide above)

    ### VALIDATING PERCENTAGE GROWTH OF NEW USERS VERSUS THE PREVIOUS PERIOD
    Wait Until Element Is Visible       ${ep46966_acquisition_percentgrowthnewuservsperiod}         ${wait_short}
#    46966 GETTING FONT WEIGH, FONT SIZE AND LINE HEIGHT OF ELEMENT        ${ep46966_acquisition_percentgrowthnewuservsperiod}       12px        400     16.8px
    GET CSS STYLE VALUE                     ${ep46966_acquisition_percentgrowthnewuservsperiod}     color        ${earnestportal_color_red1}

    ### VALIDATING PERCENTAGE OF PROGRESS LEFT TO TARGET
    Wait Until Element Is Visible       ${ep46966_acquisition_percentproglefttotartget}         ${wait_short}
#    46966 GETTING FONT WEIGH, FONT SIZE AND LINE HEIGHT OF ELEMENT        ${ep46966_acquisition_percentproglefttotartget}       12px        700     14.4px
    GET CSS STYLE VALUE                 ${ep46966_acquisition_percentproglefttotartget}         color        ${earnestportal_color_gray1}

    ### VALIDATING TARGET COUNT
    Wait Until Element Is Visible       ${ep46966_acquisition_targetcount}                      ${wait_short}
#    46966 GETTING FONT WEIGH, FONT SIZE AND LINE HEIGHT OF ELEMENT        ${ep46966_acquisition_targetcount}       16px        400     16.8px
    GET CSS STYLE VALUE                 ${ep46966_acquisition_targetcount}         color        ${earnestportal_color_gray1}

46966 [Portal] Dashboard - Show data for Acquisition - Total Registered STEP 3
    [Documentation]
    ...     *** Owner RJ ***
    ...     The progress or current achievement versus target should be visualized
    ...     - GIVEN a user is in the Acquisition section of the dashboard
    ...     - WHEN a user looks at "Total Registered Users"
    ...     - THEN a user should see a bar graph showing the current achievement vs target where the blue bar is the previous count and
    ...     the green bar is the new count of users in the selected period (See #4 on the image guide above)

    Wait Until Element Is Visible       ${ep46966_acquisition_bargraphusercount}            ${wait_short}
    Mouse Over                          ${ep46966_acquisition_bargraphusercount}
    Sleep    1s
    Capture Page Screenshot             bargraph tooltip.png
#    Wait Until Page Contains    Annual target\n8400     ${wait_short}
#    ${tooltip_val}                      Get Text        ${ep46966_bargraph_tooltip}
#
#46966 [Portal] Dashboard - Show data for Acquisition - Total Registered STEP 4
#    [Documentation]
#    ...     *** Owner RJ ***
#    ...     Created 2/27/2023
#    ...     Updated 2/27/2023
#    ...     Show a bubble on the graph when the user hovers on it
#    ...     - GIVEN a user is in the Acquisition section of the dashboard
#    ...     - WHEN user hovers on ANY point in the graph the bar graph
#    ...     - THEN display a bubble that shows the new users added in a fixed area (follow the UI on Figma).