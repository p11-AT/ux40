*** Settings ***
Library                             Selenium2Library
Resource                            ../Variables/V_RefNo_ID_V_repo.robot
Resource                            ../Keywords/K_T&C.robot
Resource                            ../Keywords/K_RefNo_V.robot
Library                             Dialogs
Library                             String

*** Test Cases ***
Reference Number
    Open Browser                    https://web-dev-ux40-customer.nprod.platform-11.com/apply/cif-lite/processing       Chrome
    Maximize Browser Window
    Sleep                           5s
    Click Element                   ${continue_button}
    Sleep                           5s

ID Verification
    Sleep                           5s
    Click Element                   ${chooseID}
    Sleep                           5s
    Click Element                   ${CompanyID}
    Sleep                           5s
    Wait Until Element Is Enabled   ${Selectbutton}
    Sleep                           5s
    Click button                    ${Selectbutton}
    Sleep                           5s
    Run Keyword And Ignore Error    Scroll Element Into View        ${Upload_frmLibrary}
    Sleep                           5s
    Click Element                   ${Upload_frmLibrary}
    Sleep                           5s





