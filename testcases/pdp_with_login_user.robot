*** Setting ***
Resource    ${CURDIR}/../keywords/keyword_resources_import.robot
Suite Setup       common_keywords.Go to home page and login  ${page_url}      ${user.email}      ${user.password}
Suite Teardown    Close All Browsers

*** Test Cases ***
Testcase 1: Verify all required elements on product detail page
    common_keywords.Click a random product on first view
    product_detail_page.Verify all required element on the product detail page

Testcase 2: Add a product to wishlist
    common_keywords.Go back to home page
    product_detail_page.Select a random product and add it to wishlist
    common_keywords.Navigate to my wishlist page
    ${wishlist_product}         wishlist_page.Get product name in wishlist page
    ${api_wishlist_product}     common_api.Login tops user and get list product name on wishlist
    wishlist_page.Verify the product on wishlist existed on list product from API  ${wishlist_product}  ${api_wishlist_product}

Testcase 3: Add a product to cart
    common_keywords.Go back to home page
    product_detail_page.Select a random product and add it to cart
    product_detail_page.Click to cart icon to checkout
    ${list_product}             common_api.Login tops user and get list product name on shopping cart
    ${list_product_on_cart}     checkout_page.Get list product appear on checkout page
    checkout_page.Verify product in cart same with product in API   ${list_product}  ${list_product_on_cart}

