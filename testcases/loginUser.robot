*** Setting ***
Resource    ${CURDIR}/../keywords/keyword_resources_import.robot 
Suite Setup         common_keywords.Go to home page and login  ${page_url}      ${user.email}      ${user.password}
Suite Teardown    Close All Browsers

*** Test Cases ***
Test case 1: Verify all require elements on product detail page
    common_keywords.Click a random product on first view


Testcase 2: Add a product to wishlist
    #1  Click wishlist butoon
    #2. Call API de lay list product
    #3. Click wishlist page 
    #4. Verify product dang hien thi voi sp get duoc tu api

Testcase 3: Add a product to cart
    #1  Click add to cart butoon
    #2. Call API de lay list product
    #3. Click cart checkout page 
    #4. Verify product dang hien thi voi sp get duoc tu api
