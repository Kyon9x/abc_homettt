*** Setting ***
Resource    ${CURDIR}/../../../testdata/import_resources.robot
Resource    ${CURDIR}/../locator/login_page_locator.robot


***Keywords***
Login with account
    [Arguments]         ${email}       ${password}
    Input Text          ${login_locator.email_address}      ${email}
    Input password      ${login_locator.password}           ${password}
    Click Element       ${login_locator.login_button}      