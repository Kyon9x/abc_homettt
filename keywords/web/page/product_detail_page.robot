*** Setting ***
Resource    ${CURDIR}/../../../testdata/import_resources.robot
Resource    ${CURDIR}/../locator/product_detail_page_locator.robot

***Keyword***
Click to wishlist button
    Click Element  ${product_detail_locator.wishlist_button}

Click to wishlist page
    Click Element  ${product_detail_locator.my_list_navigation}

Click to cart button
    Click Element  xpath=//button[@data-productid="8851111414321"]

Click to cart icon to checkout
    Wait Until Element Is Visible       ${product_detail_locator.cart_to_checkout}
    Scroll Element Into View        ${product_detail_locator.cart_to_checkout}
    Mouse Over      ${product_detail_locator.cart_to_checkout}
    Wait Until Element Is Visible      ${product_detail_locator.checkout_button}
    Click Element       ${product_detail_locator.checkout_button}

Verify add wishlist button is existed
    Element Should Be Visible    ${product_detail_locator.wishlist_button}

Verify add to cart buttin is existed
    Element Should Be Visible       ${product_detail_locator.add_to_cart_button}

Verify main image is existed
    Page Should Contain Element     ${product_detail_locator.main_image}

Verify preview images are existed
    Page Should Contain Element     ${product_detail_locator.preview_image1}
    Page Should Contain Element     ${product_detail_locator.preview_image2}
    Page Should Contain Element     ${product_detail_locator.preview_image3}
    Page Should Contain Element     ${product_detail_locator.preview_image4}
    Page Should Contain Element     ${product_detail_locator.preview_image5}
    Page Should Contain Element     ${product_detail_locator.preview_image6}

Verify product name is existed
    Element Should Be Visible       ${product_detail_locator.product_name}

Verify sku is existed
    Element Should Be Visible       ${product_detail_locator.sku}

Verify product remark for coupon info is existed
    Element Should Be Visible       ${product_detail_locator.product_remark}

Verify product price is existed
    Element Should Be Visible       ${product_detail_locator.product_price}

Verify button add to cart is existed
    Element Should Be Visible       ${product_detail_locator.add_to_cart_button}

Verify share on icons is existed
    Element Should Be Visible       ${product_detail_locator.share_on_facebook}
    Element Should Be Visible       ${product_detail_locator.share_on_line}
    Element Should Be Visible       ${product_detail_locator.share_on_mail}
    Element Should Be Visible       ${product_detail_locator.share_on_twitter}

Verify you may so like part has product suggestion
    Element Should Be Visible       ${product_detail_locator.product_on_you_may_so_like}

Verify similar product part has product suggestion
    Element Should Be Visible       ${product_detail_locator.product_on_similar_product}


Add product to wishlist
    Click Element       ${product_detail_locator.wishlist_button}
    ${product_name}     ${product_detail_locator.product_name}
    Return ${product_name}


