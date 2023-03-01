*** Settings ***
Library                             Selenium2Library
Resource                            ../Keywords/K_T&C.robot
Resource                            ../Variables/Variable_List/V_CIFL_repo.robot
Library                             Dialogs
Library                             String

*** Test Cases ***
CIF Lite
    Open Browser                    https://web-dev-ux40-customer.nprod.platform-11.com/apply/cif-lite       Chrome
    Maximize Browser Window
    Sleep                           5s
    Click Element                   ${Title}
    Sleep                           5s
    Click Element                   ${Mr}
    Sleep                           5s
    Click Element                   ${Fname}
    Sleep                           5s
    Input Text                      ${Fname}    Mike
    Sleep                           5s
    Click Element                   ${noMname}
    Sleep                           5s
    Run Keyword And Ignore Error    Scroll Element Into View        ${Submit}
    Sleep                           5s
    Click Element                   ${Lname}
    Sleep                           2s
    Input Text                      ${Lname}    Ocksmall
    Sleep                           3s
    Click Element                   ${Suffix}
    Sleep                           3s
    Click Element                   ${S_Jr}
    Sleep                           3s
    Click Element                   ${Bday}
    Sleep                           3s
    Input Text                      ${Bday}     07141999
    Sleep                           3s
    Run Keyword And Ignore Error    Click Element                   ${Submit}
    Sleep                           5s