*** Settings ***
Library         Selenium2Library
Library    Dialogs
Library    String
Library    Collections

### KEYWORD ###
Resource        ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource        ../../Resources/Repository/EarnestPortal_46969_Repository.robot
Resource        ../../Resources/Repository/Common_Repository.robot

*** Keywords ***
VALIDATING LEGENDS LABEL NEW INVESTOR
    [Arguments]                 ${element_field}        ${legend1}      ${legend2}      ${legend3}
    ${getcount}                 Get Element Count    ${element_field}
    ${legend_list_1}            Create List       ${legend1}     ${legend2}      ${legend3}
    ${legend_list_2}            Create List
    FOR    ${counter}    IN RANGE    1    ${getcount}+1
        Log    ${counter}
        ${textval}              Get Text    (${element_field})[${counter}]
        Append To List          ${legend_list_2}        ${textval}
        Log                     ${legend_list_2}

    END
    Log                         ${legend_list_2}
    Lists Should Be Equal       ${legend_list_1}    ${legend_list_2}