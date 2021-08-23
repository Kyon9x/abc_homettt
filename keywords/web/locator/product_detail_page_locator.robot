*** Variables ***
&{product_detail_locator}
...     entire_page=xpath=/html[1]
...     main_image=xpath=//img[@src= 'https://backend.tops.co.th/media//catalog/product/8/8/8851111414321_e20-04-2020.jpg']
...     preview_image1=xpath=//div[@class='images-preview']/div/div/img[@src='https://backend.tops.co.th/media//catalog/product/8/8/8851111414321_e20-04-2020.jpg']
...     preview_image2=xpath=//div[@class='images-preview']//img[@src='https://backend.tops.co.th/media//catalog/product/8/8/8851111414321_x2_e24-12-2020.jpg']
...     preview_image3=xpath=//div[@class='images-preview']//img[@src='https://backend.tops.co.th/media//catalog/product/8/8/8851111414321_x3_e24-12-2020.jpg']
...     preview_image4=xpath=//div[@class='images-preview']//img[@src='https://backend.tops.co.th/media//catalog/product/8/8/8851111414321_x4_e24-12-2020.jpg']
...     preview_image5=xpath=//div[@class='images-preview']//img[@src='https://backend.tops.co.th/media//catalog/product/8/8/8851111414321_x5_e24-12-2020.jpg']
...     preview_image6=xpath=//div[@class='images-preview']//img[@src='https://backend.tops.co.th/media//catalog/product/8/8/8851111414321_x6_e24-12-2020.jpg']
...     product_name=xpath=//h1[text()='Mamy Poko Pants Extra Dry Skin Baby Diaper Pants Boy Size XL 56pcs.']
...     sku=xpath=//div[@class='sku']
...     product_remark=xpath=//div[@class='common-description']//div[text()='Enter coupon "UN225" Free! 225.-off when you shop participating products at 1500.-/receipt.']
...     wishlist_button=xpath=//*[@id="layout"]/div[2]/div[3]/div/div/div[3]/div/div[2]/div[2]/div[1]/img
...     product_price=xpath=//div[@class='price-block']
...     add_to_cart_button=xpath=//button[@data-productid="8851111414321"]
...     share_on_facebook=xpath=//img[@src='/assets/icons/social/ic-social-facebook.svg']
...     share_on_twitter=xpath=//img[@src='/assets/icons/social/ic-social-twitter.svg']
...     share_on_line=xpath=//img[@src='/assets/icons/social/ic-social-line-chat.svg']
...     share_on_mail=xpath=//img[@src='/assets/icons/social/ic-social-email.svg']
...     you_may_so_like_part=xpath=//h2[text()='You may also like']
...     product_on_you_may_so_like=xpath=//div[@class="mt-product-item swiper-slide Js-trackProductClick swiper-slide-next"]
...     similar_product_part=xpath=//h2[text()='Similar products']
...     product_on_similar_product=xpath=//div[@id="similarity"]/div[1]/div[1]/div[2]
...     my_list_navigation=xpath=//a[@href="/en/wishlist"]
...     cart_to_checkout=xpath=//div[@class='m-cart']
...     checkout_button=css=button[class="Button__StyledButton-r30g8h-0 eQRcWY"]
...     cart_icon=css=[class="MiniCartContainer__LinkQty-sc-1k9g20s-1 fEGmfr"]
...     add_to_cart_button=css=[class="add-to-cart"] [data-testid="add-product-button"]
