*** Setting ***
Resource    ${CURDIR}/../../../testdata/import_resources.robot
Resource    ${CURDIR}/../locator/wishlist_page_locator.robot

***Keywords***
Verify the wishlist page contain wishlist product
    
    ${}     Get Text       ${wishlist_locator.product_on_wishlist_page}
    Page Should Contain Element      ${wishlist_locator.product_on_wishlist_page}