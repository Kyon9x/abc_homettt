*** Variables ***
&{product_detail_locator}
...     entire_page=xpath=/html[1]
...     main_image=xpath=//div[@class='main-image']/div/img
...     product_name=xpath=//div[@class='name']/h1
...     sku=xpath=//div[@class='sku']
...     product_remark=xpath=//div[@id="layout"]/div[2]/div[3]/div/div/div[3]/div/div[2]/div[1]/div[4]/div/div
...     wishlist_button=css=[data-testid="btn-addProduct-OnAddWishlist"] img
...     product_price=xpath=//div[@class='price-block']
...     add_to_cart_button=xpath=//div[@class="add-to-cart"]//button
...     share_on_facebook=xpath=//div[@class='social-share']/div[2]/img
...     share_on_twitter=xpath=//div[@class='social-share']/div[3]/img
...     share_on_line=xpath=//div[@class='social-share']/div[4]/img
...     share_on_mail=xpath=//a[@class='social-btn']/img
...     you_may_so_like_part=xpath=//h2[text()='You may also like']
...     product_on_you_may_so_like=xpath=//div[@class="mt-product-item swiper-slide Js-trackProductClick swiper-slide-next"]
...     similar_product_part=xpath=//h2[text()='Similar products']
...     product_on_similar_product=xpath=//div[@id="similarity"]/div[1]/div[1]/div[2]
...     my_list_navigation=xpath=//a[@href="/en/wishlist"]
...     cart_to_checkout=xpath=//div[@class='m-cart']
...     checkout_button=css=button[class="Button__StyledButton-r30g8h-0 eQRcWY"]
...     cart_icon=css=[class="MiniCartContainer__LinkQty-sc-1k9g20s-1 fEGmfr"]
...     add_to_cart_button=css=[class="add-to-cart"] [data-testid="add-product-button"]
