*** Settings ***
Resource    ${CURDIR}/../../../testdata/import_resources.robot
Resource    ${CURDIR}/../locator/checkout_page_locator.robot
*** Variables ***
@{list_name}

***Keywords***
Verify the checkout page contain added product
        Page Should Contain element     ${checkout_locator.product_on_checkout_page}

Get list product appear on checkout page
        common_keywords.Verify Web Element Is Visible                   ${checkout_locator.product_name} 
        ${element}              SeleniumLibrary.Get WebElements         ${checkout_locator.product_name}
        ${number_of_element}    BuiltIn.Get Length                      ${element}
        BuiltIn.Run Keyword If     '${number_of_element}'=='0'      Fail    Not found!
        FOR     ${index}          IN RANGE         ${number_of_element}
                ${name}         SeleniumLibrary.Get Text        ${element}[${index}]        
                Collections.Append To List      ${list_name}    ${name}
        END
        [Return]        ${list_name}

Verify product in cart same with product in API 
        [Arguments]             ${list_product_1}       ${list_product_2}
        ${number_of_list1}      BuiltIn.Get Length      ${list_product_1}
        FOR     ${index}          IN RANGE          ${number_of_list1}  
                Collections.Dictionary Should Contain Key         ${list_product_2}       ${list_product_1}[${index}]
        END
