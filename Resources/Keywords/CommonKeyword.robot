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

    Wait Until Element Is Visible       ${earnestportal_login_btn}     ${wait_mid}
    Click Element                       ${earnestportal_login_btn}
    Capture Page Screenshot             Logging In.png

    MANAGING POP UP LOGIN SYSTEM WITH TWO WAY FACTOR AUTHENTICATION     ${earnestportal_msteamsverificationcode_option2}

INPUTING TEXT VISIBLE AND ENABLED
    [Arguments]     ${element_field}        ${input_text}
    Wait Until Element Is Visible       ${element_field}        ${wait_long}
    Wait Until Element Is Enabled       ${element_field}        ${wait_long}
    Input Text                          ${element_field}        ${input_text}

CLICKING BUTTON VISIBLE AND ENABLED
    [Arguments]     ${element_field}
    Wait Until Element Is Visible       ${element_field}        ${wait_long}
    Wait Until Element Is Enabled       ${element_field}        ${wait_long}
    Click Element                       ${element_field}

MANAGING POP UP LOGIN SYSTEM WITH TWO WAY FACTOR AUTHENTICATION
    [Arguments]     ${verify_your_identity}
    ${handles}      Get Window Handles
    Switch Window       ${handles}[1]
    Sleep    1s
    Wait Until Element Is Visible           ${earnestportal_email_input}                    ${wait_long}
    ${login_title}      Get Window Titles
    Log To Console    \n${login_title[1]}
    Should Be Equal As Strings    Sign in to your account    ${login_title[1]}

    ${email_excel_input}            Get Test Data From Excel v4     Login Credentials       ${email_rj}     0
    INPUTING TEXT VISIBLE AND ENABLED       ${earnestportal_email_input}                    ${email_excel_input}
    Capture Page Screenshot                 Input Email.png
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_popup_next_btn}
    ${email_pass_excel_input}       Get Test Data From Excel v4     Login Credentials       ${email_rj}     1
    INPUTING TEXT VISIBLE AND ENABLED       ${earnestportal_passw_input}                    ${email_pass_excel_input}
    Capture Page Screenshot                 Input Password.png
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_popup_next_btn}
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_icantaccesmyauthenticator}
    ${option_for_verification_code}         Set Variable        ${verify_your_identity}
    Run Keyword If    '${option_for_verification_code}' == '${earnestportal_textmessage_option3}'                   CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_option_textmessage}
    Run Keyword If    '${option_for_verification_code}' == '${earnestportal_msteamsverificationcode_option2}'       CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_option_msteamsverificationcode}

    Wait Until Element Is Visible           ${earnestportal_codeotp_input}                  ${wait_long}
    ENTER OTP v2                            ${earnestportal_codeotp_input}
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_popup_verify_btn}
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_popup_no_btn}
    Sleep    5s
    Switch Window                           ${handles}[0]
    Wait Until Element Is Visible           ${earnestportal_ep_img}                         ${wait_long}
    Wait Until Element Is Visible           ${earnestportal_homepageheader_form}            ${wait_long}
    Wait Until Element Is Visible           ${earnestportal_homepagesidepanel_form}         ${wait_long}
    Wait Until Element Is Visible           ${earnestportal_main_form}                      ${wait_long}
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
    Log                                 ${ElementField}
    Log                                 ${static_color_val}
    Should Be Equal As Strings          ${color}    ${static_color_val}

GET FONT WEIGHT
    [Arguments]     ${ElementField}     ${static_fondweight_val_expected}
    Wait Until Element Is Visible       ${ElementField}     ${wait_long}
    ${elem1}    Get Webelement          ${ElementField}
    ${fontweight_val_actual}    Call Method             ${elem1}    value_of_css_property    font-weight
    Run Keyword If    '${fontweight_val_actual}'=='400'    Log To Console       \n${fontweight_val_actual} = Normal
    Run Keyword If    '${fontweight_val_actual}'=='400'    Log                  ${fontweight_val_actual} = Normal
    Run Keyword If    '${fontweight_val_actual}'=='500'    Log To Console       \n${fontweight_val_actual} = Medium
    Run Keyword If    '${fontweight_val_actual}'=='500'    Log                  ${fontweight_val_actual} = Medium
    Run Keyword If    '${fontweight_val_actual}'=='600'    Log To Console       \n${fontweight_val_actual} = Semi Bold
    Run Keyword If    '${fontweight_val_actual}'=='600'    Log                  ${fontweight_val_actual} = Semi Bold
    Run Keyword If    '${fontweight_val_actual}'=='700'    Log To Console       \n${fontweight_val_actual} = Bold
    Run Keyword If    '${fontweight_val_actual}'=='700'    Log                  ${fontweight_val_actual} = Bold
    Should Be Equal As Strings          ${fontweight_val_actual}    ${static_fondweight_val_expected}

GET CSS STYLE VALUE
    [Arguments]     ${ElementField}     ${css_style}        ${static_fondweight_val_expected}
    Wait Until Element Is Visible       ${ElementField}     ${wait_long}
    ${elem1}    Get Webelement          ${ElementField}
    ${fontweight_val_actual}    Call Method             ${elem1}    value_of_css_property    ${css_style}
    Should Be Equal As Strings          ${fontweight_val_actual}    ${static_fondweight_val_expected}

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
    [Arguments]     ${ElementField}     ${static_color_val}
    Wait Until Element Is Visible       ${ElementField}     ${wait_long}
    ${elem1}    Get Webelement          ${ElementField}
    ${color}    Call Method             ${elem1}    value_of_css_property    color
    Log                                 ${color}

    ${percentage_val}  set variable  ${color}
    Log    ${percentage_val}
    Run Keyword If      '${percentage_val}' == '${earnestportal_color_red1}'        Log To Console    \n Percentage is Low
    ...  ELSE IF        '${percentage_val}' == '${earnestportal_color_gray1}'       Log To Console    \n Percentage is Default
    ...  ELSE IF        '${percentage_val}' == '${earnestportal_color_green2}'      Log To Console    \n Percentage is High
    Should Be Equal As Strings          ${color}    ${static_color_val}

CONVERTING STRING TO INTEGER
    [Arguments]         ${element_field}
    ${val}              Get Text                ${element_field}
    ${splited_val}      Split String    ${val}
    ${conver_val1}      Convert To Integer    ${splited_val}[0]
    Log    ${conver_val1}

Get Test Data From Excel
    [Arguments]   ${tc_no}      ${row_val_select_index}
    Open Excel Document    ${testdatapath}\\Login Credentials.xlsx     Sheet1
    FOR  ${i}  IN RANGE  2  5
        ${rowval}   Read excel row      row_num=${i}      sheet_name=Sheet1
        exit for loop if  '${rowval[0]}'=='${tc_no}'
    END
    close all excel documents
    [Return]  ${rowval[1]}
    Log    ${rowval[1]}

Get Test Data From Excel v2
    [Arguments]   ${tc_no}      ${rownum}       ${getrowval}
    Open Excel Document    ${test_data_path}\\Sample Test Data Excel.xlsx     Sheet1
    FOR  ${i}  IN RANGE  1  5
        ${rowval}   Read excel row      row_num=${i}      sheet_name=Sheet1
        exit for loop if  '${rowval[${getrowval}]}'=='${tc_no}'
    END
    close all excel documents
    [Return]  ${rowval[${rownum}]}
    Should Be Equal As Strings    ${tc_no}    ${rowval[${rownum}]}

Get Test Data From Excel v3
    [Arguments]   ${row_num}
    Open Excel Document    ${test_data_path}\\Sample Test Data Excel.xlsx     Sheet1
    ${rowval}   Read excel row      row_num=${row_num}     sheet_name=Sheet1
    Log To Console    \n ${rowval}

    close all excel documents

Get Test Data From Excel v4
    [Arguments]   ${excel_file_name}        ${text_to_find}        ${row_val_select_index}
    Open Excel Document    ${testdatapath}\\${excel_file_name}.xlsx     Sheet1
    FOR  ${i}  IN RANGE  2  5
        ${rowval}   Read excel row      row_num=${i}      sheet_name=Sheet1
        exit for loop if  '${rowval[0]}'=='${text_to_find}'
    END
    close all excel documents
    [Return]  ${rowval[${row_val_select_index}]}
    Log    ${rowval[${row_val_select_index}]}

VALIDATE ELEMENT ATTRIBUTE VALUE
    [Arguments]     ${element_field}        ${attribute}        ${attribute_Value}
    Wait Until Element Is Visible    ${element_field}       60s
    Element Attribute Value Should Be    ${element_field}    ${attribute}    ${attribute_Value}     #Element Attribute Value Should Be    ${element_field}    type    ${attribute_Value}

VALIDATING GET TEXT VALUE
    [Arguments]     ${element_field}        ${expected_value}
    Wait Until Element Is Visible           ${element_field}        ${wait_long}
    ${text_val}     Get Text                ${element_field}
    Should Be Equal As Strings              ${text_val}             ${expected_value}

*** Comments ***
    Log    ${test_data_path}
    Get Test Data From Excel v3         4
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