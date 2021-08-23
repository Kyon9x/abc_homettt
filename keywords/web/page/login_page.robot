*** Setting ***
Resource    ${CURDIR}/../../../testdata/import_resources.robot
Resource    ${CURDIR}/../locator/login_page_locator.robot


***Keywords***
Login with account
    [Arguments]         ${email}       ${password}
    Input Text          ${login_locator.email_address}      ${email}
    Input password      ${login_locator.password}           ${password}
    Click Element       ${login_locator.login_button}

Verify login page is displayed
    Close popup if it appeared      ${common_locator.popup}
    Page Should Contain Element     ${login_locator.email_address}
    Page Should Contain Element     ${login_locator.password}
    Page Should Contain Element     ${login_locator.login_button}