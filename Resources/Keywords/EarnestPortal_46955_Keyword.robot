*** Settings ***
Library         Selenium2Library
Library    Dialogs
Library    String
Library    Collections

### KEYWORD ###
Resource        ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource        ../../Resources/Repository/EarnestPortal_46955_Repository.robot
Resource        ../../Resources/Repository/Common_Repository.robot

*** Keywords ***
46955 MANAGING POP UP LOGIN SYSTEM WITH TWO WAY FACTOR AUTHENTICATION
    [Arguments]     ${verify_your_identity}
    ${handles}      Get Window Handles
    Switch Window       ${handles}[1]
    Sleep    1s
    Wait Until Element Is Visible           ${earnestportal_email_input}                    ${wait_long}
    ${login_title}      Get Window Titles
    Log To Console    \n${login_title[1]}
    Should Be Equal As Strings    Sign in to your account    ${login_title[1]}
    INPUTING TEXT VISIBLE AND ENABLED       ${earnestportal_email_input}                    ${email_rj}
    Capture Page Screenshot                 Input Email.png
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_popup_next_btn}
    INPUTING TEXT VISIBLE AND ENABLED       ${earnestportal_passw_input}                    ${passw_rj}
    Capture Page Screenshot                 Input Password.png
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_popup_next_btn}
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_icantaccesmyauthenticator}
    ${option_for_verification_code}         Set Variable        ${verify_your_identity}
    Run Keyword If    '${option_for_verification_code}' == '${earnestportal_textmessage_option3}'                   CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_option_textmessage}
    Run Keyword If    '${option_for_verification_code}' == '${earnestportal_msteamsverificationcode_option2}'       CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_option_msteamsverificationcode}

    Wait Until Element Is Visible           ${earnestportal_codeotp_input}                  20s
    ENTER OTP v2                            ${earnestportal_codeotp_input}
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_popup_verify_btn}
    CLICKING BUTTON VISIBLE AND ENABLED     ${earnestportal_popup_no_btn}
    Sleep    5s
    Switch Window                           ${handles}[0]
    Wait Until Element Is Visible           ${earnestportal_ep_img}                         60s
    Capture Page Screenshot                 dashboard.png