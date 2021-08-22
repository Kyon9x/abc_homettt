*** Settings ***
Resource    ${CURDIR}/../../testdata/import_resources.robot

*** Variables ***
${sku_query}    $..items[*].product_name

*** Keywords ***
Post Login tops user
    [Arguments]         ${user_name}    ${password}
    ${end_point}=       Set Variable    ${api_url}/login
    &{header}=          Create Dictionary
    ...    accept=*/*
    ...    accept-encoding=gzip,deflate,br
    ...    accept-language=en-US,en;q=0.9
    ...    x-store-code=tops_sa_432_en
    
    ${body_request}=    JSONLibrary.Load JSON From File     ${CURDIR}/payload/login_payload.json
    ${body_request}=    JSONLibrary.Update Value To Json    ${body_request}    $.username    ${user_name}
    ${body_request}=    JSONLibrary.Update Value To Json    ${body_request}    $.password    ${password}
    ${body}=            Evaluate    json.dumps($body_request)    json
    ${response}=        REST.Post    endpoint=${end_point}    headers=&{header}    body=${body}
    REST.Integer        response status    200
    ${response}=        REST.Output    response headers
    ${set_cookie}       JSONLibrary.Get Value From Json     ${response}     $..Set-Cookie
    [Return]            ${set_cookie}[0]

Get use_token from login response cookie
    [Arguments]         ${response_cookie}
    ${user_token}       String.Split String     ${response_cookie}     Path=/
    ${string}           String.Get Substring	${user_token}[1]        2   -2
    [Return]            ${string}
    
Get user wishlist info
    [Arguments]             ${user_cookie}
    ${end_point}=           Set Variable    ${api_url}/wishlist
    &{header}=              Create Dictionary
    ...     accept=*/*
    ...     accept-encoding=gzip,deflate,br
    ...     accept-language=en-US,en;q=0.9
    ...     x-store-code=tops_sa_432_en
    ...     host=www.tops.co.th
    ...     connection=keep-alive
    ...     cookie=${user_cookie}
    ${response}=            REST.Get    endpoint=${end_point}    headers=&{header}
    REST.Integer            response status    200
    ${response}=            REST.Output    response
    [Return]                ${response}

Login tops user and get list product name on wishlist
    [Arguments]             ${user_name}        ${password}
    ${user_cookie}          Post Login tops user  ${user_name}      ${password}
    ${user_token}           Get use_token from login response cookie  ${user_cookie}
    ${wishlist_response}    Get user wishlist info       ${user_token}
    ${list_product_name}    JSONLibrary.Get Value From Json     ${wishlist_respone}     ${sku_query}
    [Return]                ${list_product_name}
