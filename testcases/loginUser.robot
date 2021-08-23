*** Setting ***
Resource    ${CURDIR}/../keywords/keyword_resources_import.robot
Suite Setup         common_keywords.Go to home page and login  ${page_url}      ${user.email}      ${user.password}
# Suite Teardown    Close All Browsers

*** Test Cases ***
Test case 1: Verify all require elements on product detail page
    common_keywords.Click a random product on first view
    product_detail_page.Verify add wishlist button is existed
    product_detail_page.Verify add to cart buttin is existed
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
    #1  Click wishlist butoon
    #2. Call API de lay list product
    #3. Click wishlist page 
    #4. Verify product dang hien thi voi sp get duoc tu api
    common_keywords.Click a random product on first view
    product_detail_page.Click to wishlist button
    common_api.Login tops user and get list product name on wishlist    ${user.email}      ${user.password}     #"sku": "8851111446018"already
    product_detail_page.Click to wishlist page
    wishlist_page.Verify the wishlist page contain wishlist product         #contain "sku": "8851111446018" already

Testcase 3: Add a product to cart
    #1  Click add to cart butoon
    #2. Call API de lay list product
    #3. Click cart checkout page 
    #4. Verify product dang hien thi voi sp get duoc tu api
    common_keywords.Click a random product on first view
    product_detail_page.Click to cart button
    common_api.Login tops user and get list product name on shopping cart   ${user.email}      ${user.password}
    #How to click to checkout ????
    # Execute Javascript    window.scrollTo(0, window.scrollY+height)
    # product_detail_page.Click to cart icon to checkout
    checkout_page.Verify the checkout page contain added product