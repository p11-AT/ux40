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
VALIDATE ELEMENT ATTRIBUTE TYPE
    [Arguments]     ${Element_field}        ${Attribute_Type}
    Wait Until Element Is Visible    ${Element_field}       60s
    ${webelement}       Get WebElement    ${Element_field}
    Should Be Equal As Strings    ${webelement.tag_name}    ${Attribute_Type}