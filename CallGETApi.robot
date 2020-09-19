# Created by    CcKannika

*** Settings ***
Library  RequestsLibrary
Library  BuiltIn





*** Test Cases ***


Call GET Api Service  
    &{headers}=     Create Dictionary    Content-Type=application/json      
    Create Session    api    https://jsonplaceholder.typicode.com
    ${resp}=        Get Request    api    users         headers=${headers}
    Log To Console  \n${resp.text}
    Log To Console  \n${resp.status_code}
    Should Be Equal As Strings   ${resp.status_code}     200
    