*** Settings ***
Library         Selenium2Library
Library    Dialogs
Library    String
Library    Collections

### KEYWORD ###
Resource        ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource        ../../Resources/Repository/EarnestPortal_46964_Repository.robot
Resource        ../../Resources/Repository/Common_Repository.robot

*** Keywords ***
HOVER SIDE MENU LOCK ICON
    [Arguments]     ${element_field}
    Wait Until Element Is Visible           ${element_field}        ${wait_long}
    ${getcount}     Get Element Count       ${element_field}
    FOR    ${counter}    IN RANGE    1    ${getcount}+1
        Log    ${counter}
        Log    ${element_field}
        Mouse Over    (${element_field})[${counter}]
        ${bubble_text_val}     Get Text    ${ep46964_lock_icon_tooltip}
        Should Be Equal As Strings         ${ep46964_comingsoon}       ${bubble_text_val}
        Capture Page Screenshot        Hover lock bubble[${counter}].png
    END