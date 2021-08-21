*** Setting ***
Resource    ${CURDIR}/../keywords/keyword_resources_import.robot 
#Suite Teardown    Close All Browsers

*** Variables ***

*** Test Cases ***
Test case 1
    [Tags]    web    search TV
    common_keywords.Open browser to page    ${page_url}
    common_keywords.Navigate to my wishlist page

    