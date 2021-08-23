*** Variables ***
&{common_locator}
...     entire_page=xpath=/html[1]
...     user_input=css=input.input-wrap[name='email']
...     user_password=css=input.input-wrap[name='password']
...     submit_button=css=button[type='submit']
...     account_menu=css=[class="PanelHeader__MemberMenuSection-sc-hj152d-0 iLfkcj"]
...     login_button=css=[class="Button__StyledButton-r30g8h-0 cHHDEA"]
...     home_page_noti_btn=css=#button-1580496494[class="ins-element-content ins-editable-text ins-web-opt-in-reminder-button"]
...     home_page_noti_if=css=iframe[title="Criteo DIS iframe"]
...     best_deal_list_ele=css=#campaign-catalog .swiper-wrapper > div
...     mom_n_kid=css=[data-testid="seasonal-product-carousel-container"] [class="swiper-container swiper-container-initialized swiper-container-horizontal"] [class="swiper-wrapper"] >div
...     my_list=xpath=//a[text()='My List']
...     popup=xpath=//div[@id="ematic_popUpOverlay_35217_56001_1"]/form[1]/div