*** Settings ***
Library         Selenium2Library
Library    Dialogs
Library    String
Library    Collections

### KEYWORD ###
Resource        ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource        ../../Resources/Repository/EarnestPortal_46966_Repository.robot
Resource        ../../Resources/Repository/Common_Repository.robot

*** Keywords ***
GETTING FONT WEIGH, FONT SIZE AND LINE HEIGHT OF ELEMENT
    [Arguments]     ${element_field}        ${element_fontsize}     ${element_fontweight}       ${element_fontheight}
    GET CSS STYLE VALUE                 ${element_field}       ${css_font_size}        ${element_fontsize}
    GET CSS STYLE VALUE                 ${element_field}       ${css_font_weight}      ${element_fontweight}
    GET CSS STYLE VALUE                 ${element_field}       ${css_font_height}      ${element_fontheight}
    Capture Page Screenshot             Total registered user.png

VALIDATING TEXT IS IN NUMERIC VALUE
    [Arguments]     ${element_field}
    Wait Until Element Is Visible       ${element_field}            ${wait_short}
    ${val_totalreguser}                 Get Text                    ${element_field}
    Should Be Equal As Integers         ${val_totalreguser}         ${val_totalreguser}
    Should Be Equal As Numbers          ${val_totalreguser}         ${val_totalreguser}