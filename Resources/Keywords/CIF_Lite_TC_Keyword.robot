*** Settings ***
Library  Selenium2Library
Library  Dialogs
Library  String
Resource    ../../Resources/Variables/CIFLite_Repo.robot

*** Keywords ***
Open Browser - Chrome
    [Arguments]     ${BROWSER_URL}      ${BROWSER}
    open browser                ${BROWSER_URL}      ${BROWSER}
    maximize browser window

CIF Lite: Preliminary Info - Scenario 1
    Select From List By Value   ${TITLEDROPDOWN}    Ms
    sleep                       5s
    input text                  ${FIRSTNAME_FIELD}        Katrina Aissa
    sleep                       3s
#    Ticked checkbox for No Middle Name
    select checkbox             ${MIDDLENAME_CHECKBOX}
    sleep                       3s
    input text                  ${LASTNAME_FIELD}         Tandog
    sleep                       3s
    input text                  ${BIRTHDATE_FIELD}        01121998
    sleep                       3s
    element should be disabled  ${MIDDLENAME_FIELD}
    sleep                       5s
    Execute JavaScript          window.scrollTo(0,300)
    element should be enabled  ${SUBMIT_BTN}
    sleep                       2s
    click button               ${SUBMIT_BTN}
    sleep                       5s
    ${CIFLITEDONE_URL} =    get location
    should be equal            ${CIFLITEDONE_URL}  ${CIFLITEDONE_ACTUALURL}
    sleep                       3s
    close browser

CIF Lite: Preliminary Info - Scenario 2
#   No entry for Title
    click element               ${TITLEDROPDOWN}
    sleep                       3s
    click element               ${TITLEDROPDOWN_LABEL}
    sleep                       2s
    element should be visible   ${TITLE_REQUIRED}

#    No entry for First Name
    sleep                       2s
    click element               ${FIRSTNAME_FIELD}
    sleep                       2s
    click element               ${FIRSTNAME_LABEL}
    sleep                       2s
    element should be visible   ${FIRSTNAME_REQUIRED}

#   No entry for Middle Name
    sleep                       2s
    click element               ${MIDDLENAME_FIELD}
    sleep                       2s
    click element               ${MIDDLENAME_LABEL}
    sleep                       2s
    element should be visible   ${MIDDLENAME_REQUIRED}
    sleep                       2s
    Execute JavaScript          window.scrollTo(0,300)

#   No entry for Last Name
    sleep                       2s
    click element               ${LASTNAME_FIELD}
    sleep                       2s
    click element               ${LASTNAME_LABEL}
    sleep                       2s
    element should be visible   ${LASTNAME_REQUIRED}
    sleep                       2s
#   No entry for Date of Birth
    click element               ${BIRTHDATE_FIELD}
    sleep                       2s
    click element               ${BIRTHDATE_LABEL}
    sleep                       2s
    element should be visible   ${BIRTHDATE_REQUIRED}

#   Incorrect entry for Date of Birth
    sleep                       2s
    clear element text          ${BIRTHDATE_FIELD}
    sleep                       2s
    input text                  ${BIRTHDATE_FIELD}      21011990
    sleep                       2s
    element should be visible   ${BIRTHDATE_INCORRECT}
    close browser

Check Contact Details Page
#   Contact Details
    Element Should Be Visible       ${CONTACTDETAILS_TITLE}
    Element Should Be Visible       ${CONTACTDETAILS_SUBTITLE}
    Element Should Be Visible       ${MOBILE_NUMBER_LABEL}
    Element Should Be Visible       ${MOBILE_NUMBER_FIELD}
    Element Should Be Visible       ${EMAIL_ADDRESS_LABEL}
    Element Should Be Visible       ${EMAIL_ADDRESS_FIELD}
    sleep                           3s
    input text                      ${MOBILE_NUMBER_FIELD}          9560471747
    sleep                           3s
    input text                      ${EMAIL_ADDRESS_FIELD}          lutol@getnada.com
    sleep                           3s
    Element Should Be Enabled       ${CD_SUBMIT_BTN}
    click button                    ${CD_SUBMIT_BTN}

Mobile OTP Verification Page
#    Mobile Verification
    sleep                               5s
    Element Should Be Visible           ${M_OTP_TITLE}
    sleep                               2s
    Element Should Be Visible           ${M_OTP_SUBTITLE}
    sleep                               2s
    Element Should Be Visible           ${M_OTP_LABEL}
    sleep                               2s
    Element Should Be Visible           ${M_OTP_RESENDCODE_COUNTER}
    #    Will wait for 2 mins to check if send new code link is displayed   #
    sleep                               120s
    Wait Until Element Is Visible       ${M_OTP_ELAPSED_LABEL}
    sleep                               2s
    Element Should Be Visible           ${M_OTP_SENDNEW_CODE}
    sleep                               5s

Email OTP Verification Page
#   Email Address Verification
    Element Should Be Visible           ${M_OTP_LABEL}
    sleep                               2s
    Element Should Be Visible           ${M_OTP_RESENDCODE_COUNTER}
    #    Will wait for 2 mins to check if send new code link is displayed #
    sleep                               120s
    Wait Until Element Is Visible       ${M_OTP_ELAPSED_LABEL}
    sleep                               2s
    Element Should Be Visible           ${M_OTP_SENDNEW_CODE}

ENTER OTP
#   OTP - Mobile and Email Address
    ${otp}          Get Value From User             Provide the OTP
    ${otp1}         Split String To Characters      ${otp}
    ${getcount}     Get Element Count               ${numeric_input}

    FOR    ${counter}    IN RANGE    1    ${getcount}+1
        Log    ${counter}
        ${newcounter}       Evaluate    ${counter}-1
        Input Text      (${numeric_input})[${counter}]        ${otp1[${newcounter}]}

    END

    wait until element is enabled   ${OTP_SUBMIT_BTN}       ${WAIT_LONG}
    click button                    ${OTP_SUBMIT_BTN}

CIF Lite: Preliminary Info - Scenario 3
#   Check elements in CIF Lite
    sleep                       5s
    element should be visible   ${HEADER}
    element should be visible   ${TITLE}
    element should be visible   ${SUBTITLE}
    element should be visible   ${TITLEDROPDOWN_LABEL}
    element should be visible   ${TITLE_DROPDOWN}
    element should be visible   ${FIRSTNAME_LABEL}
    element should be visible   ${FIRSTNAME_FIELD}
    element should be visible   ${MIDDLENAME_LABEL}
    element should be visible   ${LASTNAME_LABEL}
    element should be visible   ${LASTNAME_FIELD}
    element should be visible   ${SUFFIX_LABEL}
    element should be visible   ${SUFFIX_DROPDOWN}
    sleep                       3s
    Execute JavaScript          window.scrollTo(0,300)

#   Input on fields
    Select From List By Value   ${TITLEDROPDOWN}    Ms
    sleep                       5s
    input text                  ${FIRSTNAME_FIELD}        Katrina Aissa
    sleep                       3s
    input text                  ${MIDDLENAME_FIELD}       TestTestTest
    sleep                       3s
    input text                  ${LASTNAME_FIELD}         Tandog
    sleep                       3s
    input text                  ${BIRTHDATE_FIELD}        01121998
    sleep                       3s
    Execute JavaScript          window.scrollTo(0,300)
    sleep                       3s
    element should be enabled  ${SUBMIT_BTN}
    sleep                       2s
    click button               ${SUBMIT_BTN}
    sleep                       5s
    ${CIFLITEDONE_URL} =    get location
    should be equal            ${CIFLITEDONE_URL}  ${CIFLITEDONE_ACTUALURL}
    sleep                       3s
    Close Browser

## CIF Lite Processing
#CIF Lite Processing











