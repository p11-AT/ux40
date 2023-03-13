*** Settings ***
Documentation       [Portal] Dashboard - Export data as PDF
Library             Selenium2Library
Library             DateTime
Library             Collections
Library             OperatingSystem

### KEYWORDS ###
Resource            ../../Resources/Keywords/EarnestPortal_46983_Keyword.robot
Resource            ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource            ../../Resources/Repository/EarnestPortal_46983_Repository.robot
Resource            ../../Resources/Repository/EarnestPortal_46973_Repository.robot
Resource            ../../Resources/Repository/Login_Repository.robot
Resource            ../../Resources/Repository/Common_Repository.robot

Suite Setup         Opening Browser         ${url_earnest_portal}     ${browser_chrome}
Suite Teardown      Close All Browsers
*** Test Cases ***
46983 [Portal] Dashboard - Export data as PDF STEP 1
    [Documentation]
    ...     *** Owner RJ ***
    ...     The default metrics shown are for the current week
    ...     - GIVEN the Product Performance metrics
    ...     - WHEN the Product Performance metrics first load
    ...     - THEN the default date is set for the current week
    ...     - AND the week is from Monday to Sunday

    Wait Until Element Is Visible               ${earnestportal_homepageheader_form}                    ${wait_long}
    CLICKING BUTTON VISIBLE AND ENABLED         ${ep46973_thisweek_select}
    Wait Until Element Is Visible               ${ep46973_thisweek_form}                                ${wait_long}
    Wait Until Element Is Visible               ${ep46973_thisweek_form_container1}                     ${wait_long}
    Wait Until Element Is Visible               ${ep46973_thisweek_form_container2}                     ${wait_long}
    CLICKING BUTTON VISIBLE AND ENABLED         ${ep46973_thisweek_form_container1_customrange}
    Set Selenium Speed    1s
    ${date1}        Convert Date    2023/03/06      exclude_millis=yes      result_format=datetime
    ${dateyear}     Convert To String    ${date1.year}
    ${dateday}      Convert To Integer    ${date1.day}
    ${datemonth}    Convert To String    ${date1.month}
    Input Text    ${ep46973_thisweek_form_container1_customrange_fromdate}        ${datemonth}${dateday}${dateyear}      #10122022
    Set Selenium Speed    0s
    Capture Page Screenshot                     Select Custom range date
    Set Selenium Speed    1s
    ${date1}        Convert Date    2023/03/12      exclude_millis=yes      result_format=datetime
    ${dateyear}     Convert To String       ${date1.year}
    ${dateday}      Convert To Integer      ${date1.day}
    ${datemonth}    Convert To String       ${date1.month}
    Input Text    ${ep46973_thisweek_form_container1_customrange_todate}        ${datemonth}${dateday}${dateyear}
    Set Selenium Speed    0s
    Capture Page Screenshot                     Select Custom range date
    Click Element                               ${ep46973_thisweek_form_container2_apply_btn}
    Sleep    2s



    VALIDATE ELEMENT ATTRIBUTE VALUE        ${earnestportal_main_form}      ${earnestportal_id}     ${earnestportal_sidemenu_performance}
    CLICKING BUTTON VISIBLE AND ENABLED                                 ${ep46983_download_pdf_report}
    Wait Until Element Is Visible                                       ${ep46983_snackbar}     ${wait_mid}
    Capture Page Screenshot         Snackbar Visible.png
    ${snackbar_val}     Get Text    ${ep46983_snackbar}
    Sleep    5s
    Element Should Not Be Visible    ${ep46983_snackbar}
    Capture Page Screenshot         Snackbar Not Visible.png
    File Should Exist               C:\\Users\\RomeoSuarezconsultan\\Downloads\\Earnest_Portal_Dashboard_030623_to_031223.pdf
    Remove File                     C:\\Users\\RomeoSuarezconsultan\\Downloads\\Earnest_Portal_Dashboard_030623_to_031223.pdf
    Wait Until Removed              C:\\Users\\RomeoSuarezconsultan\\Downloads\\Earnest_Portal_Dashboard_030623_to_031223.pdf       15s