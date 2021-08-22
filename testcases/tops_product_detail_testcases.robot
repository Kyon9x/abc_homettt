*** Setting ***
Resource    ${CURDIR}/../keywords/keyword_resources_import.robot 
#Suite Teardown    Close All Browsers

*** Variables ***

*** Test Cases ***
# Test case 1
#     [Tags]    web    search TV
#     common_keywords.Open browser to page    ${page_url}
#     common_keywords.Navigate to my wishlist page

Test case 2: Verify elements on product detail page
    common_keywords.Open browser to page  ${page_detail_url}
    # common_keywords.Click a random product on first view
    product_detail_page.Verify add wishlist button is existed
    product_detail_page.Verify preview images are existed
    product_detail_page.Verify main image is existed
    product_detail_page.Verify product name is existed
    product_detail_page.Verify product price is existed
    product_detail_page.Verify product remark for coupon info is existed
    product_detail_page.Verify share on icons is existed
    product_detail_page.Verify sku is existed
    product_detail_page.Verify you may so like part has product suggestion
    product_detail_page.Verify similar product part has product suggestion
    
Test case 3: Verify customer add a product to their wishlist
    # //common_keywords.Open browser to page    ${page_detail_url}
    Click Element       ${product_detail_locator.wishlist_button}
    login_page.Login with account   top77982@gmail.com   Password1
    Click Element  ${product_detail_locator.my_list_navigation}
    ${expected_text}   Set Variable     "Mamy Poko Pants Extra Dry Skin Baby Diaper Pants Boy Size XL 56pcs."
    Element Text Should Be      ${wishlist_locator.product_on_wishlist_page}    ${expected_text}


    