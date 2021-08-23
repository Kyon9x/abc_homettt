*** Setting ***
Resource    ${CURDIR}/../../testdata/import_resources.robot
Resource    ${CURDIR}/locator/common_locator.robot

*** Variables ***
${GLOBALTIMEOUT}     ${30}

*** Keywords ***

Open browser to page
    [Arguments]    ${url}    ${speed}=0.1 
    ${options}=     Evaluate     sys.modules['selenium.webdriver'].ChromeOptions()     sys
    ${exclude}=     Create Dictionary    "fasp"=True
    ${prefs}=       Create Dictionary    protocol_handler.excluded_schemes=${exclude}
    Call Method     ${options}    add_argument     --disable-infobars
    Call Method     ${options}    add_argument    --disable-notifications
    Call Method     ${options}    add_experimental_option    prefs    ${prefs}
    SeleniumLibrary.Create WebDriver         Chrome      chrome_options=${options}
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Set Selenium Speed              ${speed}
    SeleniumLibrary.Go To                           ${url}
    
Close popup if it appeared
    [Arguments]     ${element}
    Run Keyword And Ignore Error    Verify Web Element Is Visible       ${element}
    Run Keyword And Ignore Error    SeleniumLibrary.Click Element At Coordinates    ${common_locator.entire_page}       60      60

Click a random product on first view
    Scroll Down with times      2
    Verify Web Element Is Visible       ${common_locator.mom_n_kid}
    Scroll To Element                   ${common_locator.mom_n_kid}
    ${list_ele}     Get WebElements     ${common_locator.mom_n_kid}
    Click Element  ${list_ele}[2]
    Close popup if it appeared                      ${common_locator.home_page_noti_if}

Get text and compare value
    [Arguments]    ${locator}       ${text_value}
    ${text}    Get Text Element     ${locator}
    BuiltIn.Return From Keyword If
    ...    '${text}' == '${text_value}'    ${true}

Get text and search value
    [Arguments]      ${locator}    ${text_value}
    ${text}    Get Text Element    ${locator}
    ${status}    BuiltIn.Run Keyword And Return Status
    ...    BuiltIn.Should Contain       ${text}    ${text_value}
    BuiltIn.Return From Keyword         ${status}

Input data and verify text for web element
    [Arguments]     ${locator}      ${expect_text}
    SeleniumLibrary.Input Text      ${locator}    ${expect_text}
    ${real_text}=    SeleniumLibrary.Get Value    ${locator}
    Should Be Equal    '${real_text}'    '${expect_text}'

Compare and assert final result 
    [Arguments]    ${rs1}    ${rs2}
    Run Keyword If     ${rs1}==${true} and ${rs2}==${true}   BuiltIn.Log    Pass. Test case finish with no issue.
    ...    ELSE    BuiltIn.Fail    Fail. Some product not available on shopping cart!

Verify Web Element Is Visible
    [Arguments]     ${locator}
    SeleniumLibrary.Wait Until Page Contains Element    ${locator}    timeout=${GLOBALTIMEOUT}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBALTIMEOUT}

Click Element
    [Arguments]    ${locator}    ${timeout}=${GLOBALTIMEOUT}
    SeleniumLibrary.Wait Until Element Is Visible     ${locator}    timeout=${timeout}
    SeleniumLibrary.Click Element  ${locator}

Get Text Element
    [Arguments]    ${locator}    ${timeout}=${GLOBALTIMEOUT}
    SeleniumLibrary.Wait Until Element Is Visible     ${locator}    timeout=${timeout}
    ${text}    SeleniumLibrary.Get Text  ${locator}
    BuiltIn.Return From Keyword    ${text}

Select Checkbox Element
    [Arguments]    ${locator}    ${timeout}=${GLOBALTIMEOUT}
    SeleniumLibrary.Wait Until Element Is Visible     ${locator}    timeout=${timeout}
    SeleniumLibrary.Select checkbox  ${locator}

Scroll And Click Element
    [Arguments]    ${locator}
    Scroll To Element    ${locator}
    common_keywords.Click Element    ${locator}

Scroll To Element
    [Arguments]    ${locator}
    SeleniumLibrary.Scroll Element Into View    ${locator}

Select from drop down by label
    [Arguments]     ${locator}     ${label}
    common_keywords.Verify Web Element Is Visible   ${locator}
    Wait Until Keyword Succeeds    3x    5s    SeleniumLibrary.Select From List By Label   ${locator}    ${label}  

Scroll Down And Wait To Get Available Element
    [Arguments]         ${locator}
    ${section}          Set Variable     ${11}
    ${page_height}      SeleniumLibrary.Get Element Size     ${common_locator.entire_page}
    ${page_height}      Set Variable    ${page_height}[1]
    ${scroll_length}    Evaluate     '${page_height}/${section}'
    FOR    ${index}  IN RANGE  ${section}
        SeleniumLibrary.Execute Javascript     window.scrollTo(0,${${scroll_length}*${index}})
        ${status}       Run Keyword And Return Status     SeleniumLibrary.Wait Until Element Is Visible     ${locator}     timeout=10
        BuiltIn.Return From Keyword If     '${status}' == '${true}'
    END
        BuiltIn.Fail     msg=Not found element in this page.

Scroll Down with times
    [Arguments]         ${times}
    ${section}          Set Variable     ${times}
    ${page_height}      SeleniumLibrary.Get Element Size     ${common_locator.entire_page}
    ${page_height}      Set Variable    ${page_height}[1]
    ${scroll_length}    Evaluate     '${page_height}/5'
    FOR    ${index}  IN RANGE  ${section}
        SeleniumLibrary.Execute Javascript     window.scrollTo(0,${${scroll_length}*${index}})
    END

Navigate to my wishlist page
    Click Element                       ${common_locator.my_list}  

Login tops user
    [Arguments]                         ${user_name}    ${password}
    Click Element                       ${common_locator.login_button}
    Verify Web Element Is Visible       ${common_locator.user_input}
    SeleniumLibrary.Input Text          ${common_locator.user_input}            ${user_name}
    SeleniumLibrary.Input password      ${common_locator.user_password}         ${password}
    Click Element                       ${common_locator.submit_button}
    Verify Web Element Is Visible       ${common_locator.account_menu}

Go to home page and login
    [Arguments]     ${url}      ${user_name}    ${password}
    Open browser to page        ${url}
    Login tops user             ${user_name}    ${password}

Go back to home page
    SeleniumLibrary.Go to       ${page_url}
    
