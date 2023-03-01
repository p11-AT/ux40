*** Settings ***
Library                           Selenium2Library
Resource                          ../Variables/V_T&C_repo.robot
Resource                          ../Keywords/K_T&C.robot
Library                            Dialogs
Library                             String

*** Test Cases ***
T&C Page
    Open browser                    https://web-dev-ux40-customer.nprod.platform-11.com/apply       Chrome
    Maximize browser window
    Sleep                           10s
    Run Keyword And Ignore Error    Scroll element into view        ${next_button}
    Sleep                           5s
    Click element                   ${button_agreet&c}
    Sleep                           2s
    Click element                   ${button_agreedataconsent}
    Sleep                           2s
    Click element                   ${button_agreedataconsent}
    Sleep                           2s
    Click element                   ${next_button}
    Sleep                           3s
OTP Page
    Run Keyword And Ignore Error    Scroll element into view        ${submitbutton}
    Click element                   ${numberfield}
    Sleep                           3s
    Input Text                      ${numberfield}                      9285327783
    Sleep                           5s
    Click element                   ${emailfield}
    Sleep                           5s
    Wait until element is enabled   ${emailfield}
    Input text                      ${inputemail}                       jayson.consultant@platform-11.com
    Sleep                           5s
    Wait until element is enabled   ${submitbutton}
    Sleep                           2s
    Click element                   ${submitbutton}
    Sleep                           5s
OTP Challenge Mobile
    ENTER OTP

    Wait Until Element Is Enabled   ${Submitbutton}
    Click Element                   ${Submitbutton}
OTP Challenge Email
    Sleep                           5s
    ENTER OTP
    Wait Until Element Is Enabled   ${Submitbutton}
    Click Element                   ${Submitbutton}
CIF Lite
    Sleep                           5s
    Click Element                   ${continue_button}
    Sleep                           5s










