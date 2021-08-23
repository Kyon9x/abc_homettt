*** Setting ***
Resource    ${CURDIR}/../../../testdata/import_resources.robot
Resource    ${CURDIR}/../locator/wishlist_page_locator.robot
*** Variables ***
@{list_product_name}

*** Keywords ***
Get product name in wishlist page
    common_keywords.Verify Web Element Is Visible  ${wishlist_locator.product_on_wishlist_page}
    ${element}     SeleniumLibrary.Get WebElements         ${wishlist_locator.product_on_wishlist_page}
    ${number_of_element}    BuiltIn.Get Length     ${element}
    BuiltIn.Run Keyword If         '${number_of_element}'=='0'      Fail    Not found!
    FOR     ${index}          IN RANGE         ${number_of_element}
                ${name}         SeleniumLibrary.Get Text        ${element}[${index}]        
                Collections.Append To List      ${list_product_name}    ${name}
    END
    [Return]        ${list_product_name}

Verify the product on wishlist existed on list product from API
    [Arguments]             ${list_product_1}       ${list_product_2}
    ${number_of_list1}      BuiltIn.Get Length      ${list_product_1}
    FOR     ${index}          IN RANGE          ${number_of_list1}  
            Collections.Dictionary Should Contain Key         ${list_product_2}       ${list_product_1}[${index}]
    END

