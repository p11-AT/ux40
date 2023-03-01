*** Settings ***
Library             Selenium2Library
Library             Dialogs
Library             Collections
Library             OperatingSystem
Library             String
Library             DateTime
Library             ExcelLibrary
#Library             AutoItLibrary
#Library             DatabaseLibrary

### REPOSITORY
Resource            ../../Resources/Repository/Common_Repository.robot
Resource            ../../Resources/Repository/EarnestPortal_46967_Repository.robot
Resource            ../../Resources/Repository/EarnestPortal_46966_Repository.robot

*** Keywords ***
Opening Browser
    [Arguments]     ${url}      ${browser}
    Open Browser                        ${url}      ${browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot             Open Browser.png

INPUTING TEXT VISIBLE AND ENABLED
    [Arguments]     ${element_field}        ${input_text}
    Wait Until Element Is Visible       ${element_field}        20s
    Wait Until Element Is Enabled       ${element_field}        20s
    Input Text                          ${element_field}        ${input_text}

CLICKING BUTTON VISIBLE AND ENABLED
    [Arguments]     ${element_field}
    Wait Until Element Is Visible       ${element_field}        20s
    Wait Until Element Is Enabled       ${element_field}        20s
    Click Element                       ${element_field}

MANAGING POP UP LOGIN SYSTEM WITH TWO WAY FACTOR AUTHENTICATION
    ${handles}      Get Window Handles
    Switch Window       ${handles}[1]
    Wait Until Element Is Visible           ${earnestportal_email_input}                    20s
    INPUTING TEXT VISIBLE AND ENABLED       ${earnestportal_email_input}                    ${email_rj}
    Capture Page Screenshot                 Input Email.png
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_popup_next_btn}
    INPUTING TEXT VISIBLE AND ENABLED       ${earnestportal_passw_input}                    ${passw_rj}
    Capture Page Screenshot                 Input Password.png
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_popup_next_btn}
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_icantaccesmyauthenticator}
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_option_textmessage}
    Wait Until Element Is Visible           ${earnestportal_codeotp_input}                  20s
    ENTER OTP v2                            ${earnestportal_codeotp_input}
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_popup_verify_btn}
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_popup_no_btn}
    Sleep    5s
    Switch Window                           ${handles}[0]
    Wait Until Element Is Visible           ${earnestportal_ep_img}                         60s
    Capture Page Screenshot                 dashboard.png

ENTER OTP v2
    [Arguments]     ${element_field}
    ${otp}          Get Value From User             Please Provide OTP code
    Input Text      ${element_field}        ${otp}

GET BACKGROUND COLOR
    [Arguments]     ${ElementField}     ${static_color_val}
    Wait Until Element Is Visible       ${ElementField}     ${wait_long}
    ${elem1}    Get Webelement          ${ElementField}
    ${color}    Call Method             ${elem1}    value_of_css_property    background-color
    Log                                 ${color}
    Log                                 ${static_color_val}
    Should Be Equal As Strings          ${color}    ${static_color_val}

VALIDATING LEGENDS LABEL
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
    Log                         ${legend_list_1}
    Log                         ${legend_list_2}
    Lists Should Be Equal       ${legend_list_1}    ${legend_list_2}

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
    ${val}              Get Text                ${element_field}
    ${splited_val}      Split String    ${val}
    ${conver_val1}      Convert To Integer    ${splited_val}[0]
    Log    ${conver_val1}

Get Test Data From Excel
    [Arguments]   ${tc_no}
    Open Excel Document    ${TestDataPath}\\TestData.xlsx     Sheet1
    FOR  ${i}  IN RANGE  2  23
        ${RowVal}   Read excel row      row_num=${i}      sheet_name=Sheet1
        exit for loop if  '${RowVal[0]}'=='${tc_no}'
    END
    close all excel documents
    [Return]  ${RowVal[1]}

Get Test Data From Excel v2
    [Arguments]   ${tc_no}      ${rownum}       ${getrowval}
    Open Excel Document    ${test_data_path}\\Sample Test Data Excel.xlsx     Sheet1
    FOR  ${i}  IN RANGE  1  5
        ${RowVal}   Read excel row      row_num=${i}      sheet_name=Sheet1
        exit for loop if  '${RowVal[${getrowval}]}'=='${tc_no}'
    END
    close all excel documents
    [Return]  ${RowVal[${rownum}]}
    Should Be Equal As Strings    ${tc_no}    ${RowVal[${rownum}]}

Get Test Data From Excel v3
    [Arguments]   ${row_num}
    Open Excel Document    ${test_data_path}\\Sample Test Data Excel.xlsx     Sheet1
    ${RowVal}   Read excel row      row_num=${row_num}     sheet_name=Sheet1
    Log To Console    \n ${RowVal}

    close all excel documents

*** Comments ***
GET BACKGROUND COLOR
    [Arguments]     ${ElementField}     ${Color}
    Wait Until Element Is Visible    ${ElementField}
    ${elem1}    Get Webelement    ${ElementField}
    ${color}    Call Method    ${elem1}    value_of_css_property    background-color
    Log    ${color}
    Should Be Equal As Strings    ${color}    ${Color}      #rgba(0, 166, 90, 1)       # green

VALIDATE ELEMENT ATTRIBUTE TYPE
    [Arguments]     ${Element_field}        ${Attribute_Type}
    Wait Until Element Is Visible    ${Element_field}       60s
    ${webelement}       Get WebElement    ${Element_field}
    Should Be Equal As Strings    ${webelement.tag_name}    ${Attribute_Type}

VALIDATE ELEMENT ATTRIBUTE TYPE SHOULD NOT BE EDITABLE
    [Arguments]     ${Element_field}        ${Attribute_Type}
    Wait Until Element Is Visible    ${Element_field}       60s
    ${webelement}       Get WebElement    ${Element_field}
    Should Not Be Equal As Strings    ${webelement.tag_name}    ${Attribute_Type}

VALIDATE ELEMENT ATTRIBUTE VALUE
    [Arguments]     ${Element_field}        ${Attribute_Value}
    Wait Until Element Is Visible    ${Element_field}       60s
    Element Attribute Value Should Be    ${Element_field}    type    ${Attribute_Value}