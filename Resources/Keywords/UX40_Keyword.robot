*** Settings ***
Library         Selenium2Library
Library    Dialogs
Library    String

#Library           Selenium2Library
#Library           CommonValidationsKeywords.py
#Library           OperatingSystem
#Library           String
#Library           DateTime
#Library           ExcelLibrary
#Library           AutoItLibrary
#Library           DatabaseLibrary

### REPOSITORY ###
Resource        ../../Resources/Repository/UX40_Repo.robot

*** Keywords ***
Opening Browser
    [Arguments]     ${url}      ${browser}
    Open Browser                        ${url}      ${browser}
    Maximize Browser Window
    Sleep    2s
#    Wait Until Element Is Visible       ${banner_form}     ${wait_long}
    Capture Page Screenshot             Open Browser.png
    
SCROLLING TO ELEMENT
    [Arguments]     ${scroll_element}
    Scroll Element Into View            ${scroll_element}
    Wait Until Element Is Visible       ${scroll_element}       ${wait_long}
    Capture Page Screenshot             scrolled element.png

ENTER OTP
    ${otp}          Get Value From User             Please Provide OTP code
    ${otp1}         Split String To Characters      ${otp}
    ${getcount}     Get Element Count               ${numeric_input}

    FOR    ${counter}    IN RANGE    1    ${getcount}+1
        Log    ${counter}
        ${newcounter}       Evaluate    ${counter}-1
        Input Text      (${numeric_input})[${counter}]        ${otp1[${newcounter}]}
    END