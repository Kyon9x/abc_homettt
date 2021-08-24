*** Setting ***
Resource    ${CURDIR}/../keywords/keyword_resources_import.robot 
Suite Setup         common_keywords.Open browser to page    ${page_url}
Suite Teardown      Close All Browsers

*** Test Cases ***
Testcase 1: Verify all require elements on product detail page with guest user
    common_keywords.Click a random product on first view
    product_detail_page.Verify all required element on the product detail page

Testcase 2: Add a product to wishlist by guest user
    common_keywords.Go back to home page
    product_detail_page.Select a random product and add it to wishlist with guest user
    login_page.Verify login page is displayed   

Testcase 3: Add a product to cart by guest user
    common_keywords.Go back to home page
    product_detail_page.Select a random product and add it to cart
    login_page.Verify login page is displayed 
