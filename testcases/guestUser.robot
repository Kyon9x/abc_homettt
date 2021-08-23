*** Setting ***
Resource    ${CURDIR}/../keywords/keyword_resources_import.robot 
Suite Setup         common_keywords.Open browser to page  ${page_url}
Suite Teardown    Close All Browsers


*** Test Cases ***
Test case 1: Verify all require elements on product detail page
    common_keywords.Click a random product on first view
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

Testcase 2: Add a product to wishlist
    product_detail_page.Click to wishlist button
    login_page.Verify login page is displayed   

Testcase 3: Add a product to cart
    common_keywords.Open browser to page  ${page_url}
    common_keywords.Click a random product on first view
    product_detail_page.Click to cart button
    login_page.Verify login page is displayed 
