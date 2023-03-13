*** Settings ***
Library         Selenium2Library
Library         Dialogs
Library         String
Library         Collections

### KEYWORD ###
Resource        ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource        ../../Resources/Repository/BugFix_EarnestPortal_50915_Repository.robot
Resource        ../../Resources/Repository/Common_Repository.robot

*** Keywords ***
HOVER SIDE MENU LOCK ICON ep50915
    [Arguments]     ${element_field}        ${element_field_tooltip_span}       ${static_fondweight_val_expected}
    Wait Until Element Is Visible           ${element_field}        ${wait_long}
    ${getcount}     Get Element Count       ${element_field}
    FOR    ${counter}    IN RANGE    1    ${getcount}+1
        Log    ${counter}
        Log    ${element_field}
        Mouse Over    (${element_field})[${counter}]
        ${bubble_text_val}     Get Text     ${ep50915_lock_icon_tooltip}
        Should Be Equal As Strings          ${ep50915_comingsoon}       ${bubble_text_val}
        GET FONT WEIGHT                     ${element_field_tooltip_span}            ${static_fondweight_val_expected}
        Capture Page Screenshot             Hover lock bubble[${counter}].png
    END