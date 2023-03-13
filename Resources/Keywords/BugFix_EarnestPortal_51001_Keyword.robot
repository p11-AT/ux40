*** Settings ***
Library         Selenium2Library
Library    Dialogs
Library    String
Library    Collections

### KEYWORD ###
Resource        ../../Resources/Keywords/CommonKeyword.robot

### REPOSITORY ###
Resource        ../../Resources/Repository/BugFix_EarnestPortal_51001_Repository.robot
Resource        ../../Resources/Repository/Common_Repository.robot

*** Keywords ***
CONVERTING DATE FROM WORDS TO NUMBERS
    ${week_date_range}          Get Text                ${ep51001_thisweek_form}
    ${current_day}              Get Current Date
    ${current_day}              Convert Date            ${current_day}      exclude_millis=yes      result_format=datetime
    ${current_day_day}          Convert To String       ${current_day.day}
    ${current_day_month}        Convert To String       ${current_day.month}
    ${current_day_year}         Convert To String       ${current_day.year}
    ${final_current_day}        Set Variable            ${current_day_year}${current_day_month}${current_day_day}
    ${final_current_day}        Convert Date            ${current_day}      result_format=%A %b %w, %Y
    ${final_current_day}        Split String            ${final_current_day}
    Log To Console              ${final_current_day}

    ${list_current_week}        Create List
    IF    '${final_current_day[0]}'=='Monday'
        ### MONDAY CURRENT DAY
        ${this_week_days_monday}    Evaluate            ${current_day_day}+0
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_monday}
        ### TUESDAY
        ${this_week_days}           Evaluate            ${current_day_day}+1
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### WEDNESDAY
        ${this_week_days}           Evaluate            ${current_day_day}+2
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### THURSDAY
        ${this_week_days}           Evaluate            ${current_day_day}+3
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### FRIDAY
        ${this_week_days}           Evaluate            ${current_day_day}+4
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SATURDAY
        ${this_week_days}           Evaluate            ${current_day_day}+5
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SUNDAY
        ${this_week_days_sunday}    Evaluate            ${current_day_day}+6
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_sunday}

        ${expected_result}          Set Variable        ${final_current_day[1]} ${this_week_days_monday}, ${current_day_year} - ${final_current_day[1]} ${this_week_days_sunday}, ${current_day_year}
        Log                         ${expected_result}
        Log                         ${week_date_range}
        Should Be Equal As Strings    ${expected_result}    ${week_date_range}
    END
    IF    '${final_current_day[0]}'=='Tuesday'
        ### MONDAY
        ${this_week_days_monday}    Evaluate            ${current_day_day}-1
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_monday}
        ### TUESDAY CURRENT DAY
        ${this_week_days}           Evaluate            ${current_day_day}+0
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### WEDNESDAY
        ${this_week_days}           Evaluate            ${current_day_day}+1
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### THURSDAY
        ${this_week_days}           Evaluate            ${current_day_day}+2
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### FRIDAY
        ${this_week_days}           Evaluate            ${current_day_day}+3
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SATURDAY
        ${this_week_days}           Evaluate            ${current_day_day}+4
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SUNDAY
        ${this_week_days_sunday}    Evaluate            ${current_day_day}+5
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_sunday}

        ${expected_result}          Set Variable        ${final_current_day[1]} ${this_week_days_monday}, ${current_day_year} - ${final_current_day[1]} ${this_week_days_sunday}, ${current_day_year}
        Log                         ${expected_result}
        Log                         ${week_date_range}
        Should Be Equal As Strings    ${expected_result}    ${week_date_range}
    END
    IF    '${final_current_day[0]}'=='Wednesday'
        ### MONDAY
        ${this_week_days_monday}    Evaluate            ${current_day_day}-2
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_monday}
        ### TUESDAY
        ${this_week_days}           Evaluate            ${current_day_day}-1
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### WEDNESDAY CURRENT DAY
        ${this_week_days}           Evaluate            ${current_day_day}+0
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### THURSDAY
        ${this_week_days}           Evaluate            ${current_day_day}+1
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### FRIDAY
        ${this_week_days}           Evaluate            ${current_day_day}+2
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SATURDAY
        ${this_week_days}           Evaluate            ${current_day_day}+3
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SUNDAY
        ${this_week_days_sunday}    Evaluate            ${current_day_day}+4
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_sunday}

        ${expected_result}          Set Variable        ${final_current_day[1]} ${this_week_days_monday}, ${current_day_year} - ${final_current_day[1]} ${this_week_days_sunday}, ${current_day_year}
        Log                         ${expected_result}
        Log                         ${week_date_range}
        Should Be Equal As Strings    ${expected_result}    ${week_date_range}
    END
    IF    '${final_current_day[0]}'=='Thursday'
        ### MONDAY
        ${this_week_days_monday}    Evaluate            ${current_day_day}-3
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_monday}
        ### TUESDAY
        ${this_week_days}           Evaluate            ${current_day_day}-2
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### WEDNESDAY
        ${this_week_days}           Evaluate            ${current_day_day}-1
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### THURSDAY CURRENT DAY
        ${this_week_days}           Evaluate            ${current_day_day}+0
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### FRIDAY
        ${this_week_days}           Evaluate            ${current_day_day}+1
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SATURDAY
        ${this_week_days}           Evaluate            ${current_day_day}+2
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SUNDAY
        ${this_week_days_sunday}    Evaluate            ${current_day_day}+3
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_sunday}

        ${expected_result}          Set Variable        ${final_current_day[1]} ${this_week_days_monday}, ${current_day_year} - ${final_current_day[1]} ${this_week_days_sunday}, ${current_day_year}
        Log                         ${expected_result}
        Log                         ${week_date_range}
        Should Be Equal As Strings    ${expected_result}    ${week_date_range}
    END
    IF    '${final_current_day[0]}'=='Friday'
        ### MONDAY
        ${this_week_days_monday}    Evaluate            ${current_day_day}-4
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_monday}
        ### TUESDAY
        ${this_week_days}           Evaluate            ${current_day_day}-3
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### WEDNESDAY
        ${this_week_days}           Evaluate            ${current_day_day}-2
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### THURSDAY
        ${this_week_days}           Evaluate            ${current_day_day}-1
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### FRIDAY CURRENT DAY
        ${this_week_days}           Evaluate            ${current_day_day}+0
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SATURDAY
        ${this_week_days}           Evaluate            ${current_day_day}+1
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SUNDAY
        ${this_week_days_sunday}    Evaluate            ${current_day_day}+2
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_sunday}

        ${expected_result}          Set Variable        ${final_current_day[1]} ${this_week_days_monday}, ${current_day_year} - ${final_current_day[1]} ${this_week_days_sunday}, ${current_day_year}
        Log                         ${expected_result}
        Log                         ${week_date_range}
        Should Be Equal As Strings    ${expected_result}    ${week_date_range}
    END
    IF    '${final_current_day[0]}'=='Saturday'
        ### MONDAY
        ${this_week_days_monday}    Evaluate            ${current_day_day}-5
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_monday}
        ### TUESDAY
        ${this_week_days}           Evaluate            ${current_day_day}-4
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### WEDNESDAY
        ${this_week_days}           Evaluate            ${current_day_day}-3
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### THURSDAY
        ${this_week_days}           Evaluate            ${current_day_day}-2
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### FRIDAY
        ${this_week_days}           Evaluate            ${current_day_day}-1
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SATURDAY CURRENT DAY
        ${this_week_days}           Evaluate            ${current_day_day}+0
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SUNDAY
        ${this_week_days_sunday}    Evaluate            ${current_day_day}+1
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_sunday}

        ${expected_result}          Set Variable        ${final_current_day[1]} ${this_week_days_monday}, ${current_day_year} - ${final_current_day[1]} ${this_week_days_sunday}, ${current_day_year}
        Log                         ${expected_result}
        Log                         ${week_date_range}
        Should Be Equal As Strings    ${expected_result}    ${week_date_range}
    END
    IF    '${final_current_day[0]}'=='Sunday'
        ### MONDAY
        ${this_week_days_monday}    Evaluate            ${current_day_day}-6
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_monday}
        ### TUESDAY
        ${this_week_days}           Evaluate            ${current_day_day}-5
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### WEDNESDAY
        ${this_week_days}           Evaluate            ${current_day_day}-4
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### THURSDAY
        ${this_week_days}           Evaluate            ${current_day_day}-3
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### FRIDAY
        ${this_week_days}           Evaluate            ${current_day_day}-2
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SATURDAY
        ${this_week_days}           Evaluate            ${current_day_day}-1
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days}
        ### SUNDAY CURRENT DAY
        ${this_week_days_sunday}    Evaluate            ${current_day_day}+0
        ${day_count_in_week}        Append To List      ${list_current_week}        ${this_week_days_sunday}

        ${expected_result}          Set Variable        ${final_current_day[1]} ${this_week_days_monday}, ${current_day_year} - ${final_current_day[1]} ${this_week_days_sunday}, ${current_day_year}
        Log                         ${expected_result}
        Log                         ${week_date_range}
        Should Be Equal As Strings    ${expected_result}    ${week_date_range}
    END

    Log                 ${list_current_week}
    Log To Console      ${list_current_week}