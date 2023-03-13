*** Settings ***
Library         Selenium2Library
Library    Dialogs
Library    String
Library    Collections

### KEYWORD ###
Resource        ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource        ../../Resources/Repository/BugFix_EarnestPortal_51007_Repository.robot

*** Keywords ***
VALIDATING OPTIONS FOR DATE RANGE FOR PERIODS
    [Arguments]     ${element_field}
    Wait Until Element Is Visible                   ${element_field}        ${wait_long}
    ${getcount}             Get Element Count       ${element_field}
    ${actual_list}          Create List
    ${expected_list}        Create List             ${ep51007_previousperiod}       ${ep51007_sameperiodlastweek}       ${ep51007_sameperiodlastmonth}
    FOR    ${counter}    IN RANGE    1    ${getcount}+1
        Log    ${counter}
        ${actual_options_text}      Get Text        (${element_field})[${counter}]
        Append To List          ${actual_list}      ${actual_options_text}
        Log                     ${actual_list}
    END
    Lists Should Be Equal       ${actual_list}      ${expected_list}