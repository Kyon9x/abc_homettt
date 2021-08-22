*** Setting ***
Resource    ${CURDIR}/../keywords/keyword_resources_import.robot 
Suite Setup         common_keywords.Open browser to page  ${page_url}
Suite Teardown    Close All Browsers

#File nay la cho guest user. khong can login

*** Test Cases ***
Test case 1: Verify all require elements on product detail page
    common_keywords.Click a random product on first view
    # roi verify cac element o day nay

Testcase 2: Add a product to wishlist
    #Click wishlist butoon
    #Verify man hinh dang nhap

Testcase 3: Add a product to cart
    #Click add cart butoon
    #Verify man hinh dang nhap
