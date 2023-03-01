*** Settings ***
Library                           Selenium2Library
Library                             Dialogs
Resource                           ../Variables/V_T&C_repo.robot
Library                             String


*** Keywords ***
Opening Chrome Browser
    Open browser                  https://web-dev-ux40-customer.nprod.platform-11.com/    Chrome
    Maximize browser window
    Sleep                         5s
Home Page
    Wait until element is visible  ${savings_button}
HomePage_2
    Open browser                  https://web-dev-ux40-customer.nprod.platform-11.com/    Chrome
    maximize browser window
    Sleep                         5s
    Execute JavaScript            window.scrollTo(1,700)
    Scroll element into view      ${button1}
    Sleep                         5s
    Click element                 ${button1}
    Execute Javascript            window.document.evaluate("/html/body/div[3]/div[3]/div/div[2]/div[5]/div[4]/div[1]/button", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView(true);
    Sleep                         5s
    Click element                 ${button_apply}
    Sleep                         5s
T&C Page
    Page should contain element  ${spiels_t&c1}
    Page should contain element  ${spiels_t&c2}
    Page should contain element  ${spiels_t&c3}
    Page should contain element  ${spiels_t$c4}
    Scroll element into view     ${Spiels_T&C5}
    Sleep                        3s
    Page should contain element  ${Spiels_T&C6}
    Page should contain element  ${spiels_t&c7}
    Page should contain element  ${Spiels_T&C8}     You are a Filipino currently residing in the Philippines
    Sleep                        3s
    Page should contain element  ${Spiels_T&C9}     You are at least 18 years old
    Page should contain element  ${Spiels_T&C10}    You agree to maintain a minimum average daily balance (ADB) of P2,000 every month, and will accept a fee of P300 if the ADB does not reach the minimum for 2 consecutive months.
    Scroll element into view     ${Spiels_T&C11}
    Page should contain element  ${spiels_t&c11}
    Page should contain element  ${Spiels_T&C12}
    Page should contain element  ${Spiels_T&C13}
    Page should contain element  ${Spiels_T&C14}
    Scroll element into view     ${button_fullt&c}
    Sleep                        5s
    Click element                ${button_fullt&c}
    ${tab1}=                     Switch window                                   NEW
    Sleep                        10
    Switch Window                ${tab1}           # switch back to original tab
    Sleep                        5s
    Scroll element into view     ${button_accopent&c}
    Sleep                        3s
    Click element                ${button_accopent&c}
    ${tab2}=                     Switch window                                   NEW
    Sleep                        10                            # do stuff in new tab
    Switch Window                ${tab2}           # switch back to original tab
    Sleep                        5s
    Scroll element into view     ${button_privacypolicy}
    Sleep                        3s
    Click element                ${button_privacypolicy}
    Sleep                        10s
    ${tab3}=                     Switch window                                   NEW
    Switch window                ${tab3}
    Sleep                        3s
    Scroll element into view     ${spiels_t&c15}
    Page should contain element  ${spiels_t&c15}
    Page should contain element  ${spiels_t&c16}
    Page should contain element  ${spiels_t&c17}
    Sleep                        3s
    Scroll element into view     ${button_dataconsent}
    Sleep                        3s
    Click element                ${button_dataconsent}
    Sleep                        3s
    Scroll element into view     ${button_t&ccwrap}
    Click element                ${button_t&ccwrap}
    Sleep                        2s
    ${tab4}=                     Switch window                                   NEW
    Sleep                        10s                            # do stuff in new tab
    Switch Window                ${tab4}           # switch back to original tab
    Scroll element into view     ${button_prvcyplcywrap}
    Sleep                        5s
    Click element                ${button_prvcyplcywrap}
    Sleep                        10s
    ${tab5}=                     Switch window                                   NEW
    Sleep                        10s                         # do stuff in new tab
    Switch Window                ${tab5}           # switch back to original tab
    Sleep                        5s
    Scroll element into view     ${button_dataconsentwrap}
    Sleep                        2s
    Click element                ${button_dataconsentwrap}
    Sleep                        10s
    ${tab6}=                     Switch window                                   NEW
    Sleep                        10s                            # do stuff in new tab
    Switch Window                ${tab6}           # switch back to original tab
    Sleep                        10s
    Scroll element into view     ${spiels_t&c18}
    Page should contain element  ${spiels_t&c18}
    Sleep                        2s
    Scroll element into view     ${spiels_t&c18}
    Sleep                        5s
    Click element                ${button_agreet&c}
    Sleep                        2s
    Click element                ${button_agreedataconsent}
    Sleep                        5s
    Click element                ${button_agreedataconsent}
    Sleep                        5s
    Click element                ${button_next}
    Sleep                        5s
ENTER OTP
    ${otp}                      Get Value From User         Ipasok mo beh!
    ${otp1}                     Split String To Characters      ${otp}
    ${getcount}                 Get Element Count   ${numeric_input}
    FOR     ${counter}      IN RANGE        1      ${getcount}+1
    Log     ${counter}
    ${newcounter}           Evaluate            ${counter}-1
    Input Text              (${numeric_input})[${counter}]          ${otp1[${newcounter}]}

    END


    Wait Until Element Is Enabled   ${Submitbutton}
    Click Element                   ${Submitbutton}