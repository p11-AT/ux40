*** Settings ***
Library         Selenium2Library
Resource        ../../Resources/Keywords/UX40_Keyword.robot
Resource        ../../Resources/Repository/UX40_Repo.robot

*** Test Cases ***
TC 1 HOMEPAGE
    [Documentation]
    ...     *** Owner RJ ***

    Opening Browser         ${ux40_url2}     ${browser_chrome}
#    SCROLLING TO ELEMENT                ${regularsavings_container}
#    Click Element                       ${regularsavings_container}
#    Wait Until Element Is Visible       ${regularsavings_img}      ${wait_long}
#    Capture Page Screenshot             test.png
#
#TC 2 REGULAR SAVING FORM
#
#    SCROLLING TO ELEMENT                ${applynow_btn}
#    Capture Page Screenshot             apply now btn.png
#
#TC 3 T&C PAGE
#
#    Click Element                       ${applynow_btn}
#    Wait Until Element Is Visible       ${t&c_content}      ${wait_long}
#    Capture Page Screenshot             tc3.png
#
#    SCROLLING TO ELEMENT                ${next_btn}
##    Wait Until Element Is Visible       ${t&c_condi_and_data_privacy_policy}        ${wait_short}
#    Click Element                       ${t&c_condi_and_data_privacy_policy}
#    Capture Page Screenshot             t&c checkboxes.png
#    Click Element                       ${next_btn}
#    Capture Page Screenshot             t&c next.png
    
TC 4 CONTACT DETAILS
    
    Wait Until Element Is Visible       ${numeric_input}        ${wait_long}
    Input Text                          ${numeric_input}        9455586601
    Input Text                          ${email_input}          arjaysuarez3@gmail.com
    Wait Until Element Is Enabled       ${submit_btn}           ${wait_long}
    Click Element                       ${submit_btn}
    Sleep    3s

TC 5 MOBILE OTP VERIFICATION

    Wait Until Element Is Visible       ${numeric_input}        ${wait_long}
    ENTER OTP
    Sleep    3s
    Capture Page Screenshot             mobile otp.png
    Wait Until Element Is Enabled       ${submit_btn}           ${wait_long}
    Click Element                       ${submit_btn}

TC 6 EMAIL OTP VERIFICATION

    Wait Until Element Is Visible       ${numeric_input}        ${wait_long}
    ENTER OTP
    Sleep    3s
    Capture Page Screenshot             email otp.png
    Wait Until Element Is Enabled       ${submit_btn}           ${wait_long}
    Click Element                       ${submit_btn}






    select *  from cash_deposit  where channel_ref_id = 'AD90765F'
select * from "transaction" where txn_ref_id = 'ac194a7c-d488-4719-b66c-6b1575a6d8fc'
select * from cash_deposit where txn_date  = '2023-02-24 00:00:00.000'
select * from "transaction"
SELECT COUNT(*) from "transaction"