Resource    ${CURDIR}/../../../testdata/import_resources.robot
Resource    ${CURDIR}/../locator/checkout_page_locator.robot

***Keywords***
Verify the checkout page contain added product
        Page Should Contain element     ${checkout_locator.product_on_checkout_page}