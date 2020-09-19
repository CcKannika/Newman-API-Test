# Created by    CcKannika

*** Settings ***
Library  RequestsLibrary
Library  BuiltIn





*** Test Cases ***

Call POST Api Service 
    &{headers}=     Create Dictionary    Content-Type=application/json
    Create Session    api    https://jsonplaceholder.typicode.com
    ${resp}=        POST Request    api    posts        headers=${headers}
    Log To Console  \n${resp.headers}
    Log To Console  \n${resp.status_code}
    Should Be Equal As Strings   ${resp.status_code}     201
