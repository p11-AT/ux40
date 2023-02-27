*** Settings ***
Library         Selenium2Library
Library    Dialogs
Library    String
Library    Collections

### KEYWORD ###
Resource        ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource        ../../Resources/Repository/EarnestPortal_Repository.robot
Resource        ../../Resources/Repository/Common_Repository.robot

*** Keywords ***

ENTER OTP v2
    [Arguments]     ${element_field}
    ${otp}          Get Value From User             Please Provide OTP code
    Input Text      ${element_field}        ${otp}

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

VALIDATING LEGENDS LABEL
    [Arguments]                 ${element_field}
    ${getcount}                 Get Element Count    ${earnestportal_legend_label}
    ${legend_list_1}            Create List       Branch     Online      Earnest
    ${legend_list_2}            Create List
    FOR    ${counter}    IN RANGE    1    ${getcount}+1
        Log    ${counter}
        ${textval}              Get Text    (${earnestportal_legend_label})[${counter}]
        Append To List          ${legend_list_2}        ${textval}
        Log                     ${legend_list_2}

    END
    Log                         ${legend_list_2}
    Lists Should Be Equal       ${legend_list_1}    ${legend_list_2}

GET BACKGROUND COLOR
    [Arguments]     ${ElementField}     ${static_color_val}
    Wait Until Element Is Visible       ${ElementField}     ${wait_long}
    ${elem1}    Get Webelement          ${ElementField}
    ${color}    Call Method             ${elem1}    value_of_css_property    background-color
    Log                                 ${color}
    Log                                 ${static_color_val}
    Should Be Equal As Strings          ${color}    ${static_color_val}      #rgb(216, 246, 183) #rgba(0, 166, 90, 1)       # green

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