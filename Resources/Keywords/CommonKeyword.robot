*** Settings ***
Library           Selenium2Library
Library           CommonValidationsKeywords.py
Library           OperatingSystem
Library           String
Library           DateTime
Library           ExcelLibrary
Library           AutoItLibrary
Library           DatabaseLibrary

### REPOSITORY
Resource            ../../Resources/Repository/Common_Repository.robot
Resource            ../../Resources/Repository/EarnestPortal_Repository.robot

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

***
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