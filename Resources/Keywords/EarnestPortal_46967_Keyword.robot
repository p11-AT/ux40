*** Settings ***
Library         Selenium2Library
Library    Dialogs
Library    String
Library    Collections

### KEYWORD ###
Resource        ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource        ../../Resources/Repository/EarnestPortal_46967_Repository.robot
Resource        ../../Resources/Repository/Common_Repository.robot

*** Keywords ***
GET BACKGROUND COLOR v2
    [Arguments]     ${ElementField}
    Wait Until Element Is Visible       ${ElementField}     ${wait_long}
    ${elem1}    Get Webelement          ${ElementField}
    ${color}    Call Method             ${elem1}    value_of_css_property    color
    Log                                 ${color}

    ${percentage_val}  set variable  ${color}
    Log    ${percentage_val}
    Run Keyword If      '${percentage_val}' == '${earnestportal_color_red1}'        Log To Console    \n Percentage is Low
    ...  ELSE IF        '${percentage_val}' == '${earnestportal_color_gray1}'       Log To Console    \n Percentage is Default

CONVERTING STRING TO INTEGER
    [Arguments]         ${element_field}
    ${val}              Get Text                ${earnestportal_activeinvestor_newactiveinvestor_span}
    ${splited_val}      Split String    ${val}
    ${conver_val1}      Convert To Integer    ${splited_val}[0]
    Log    ${conver_val1}

VALIDATE ELEMENT ATTRIBUTE TYPE
    [Arguments]     ${Element_field}        ${Attribute_Type}
    Wait Until Element Is Visible    ${Element_field}       60s
    ${webelement}       Get WebElement    ${Element_field}
    Should Be Equal As Strings    ${webelement.tag_name}    ${Attribute_Type}