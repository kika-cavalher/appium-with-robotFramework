
*** Settings ***
Resource                                            ../basic.robot

*** Keywords ***
Open Login
    Enter Navegation Menu
    Access page via menu                    FORMS
    Validate if is right page               FORMS
    Click Text                              ${open_login}
    Validate if is right page               ${text_login}


Fill Login Forms
    ${user}                                  Factory Session                    login          
    
    Input Text                               ${form_email}                      ${user}[email] 
    Input Text                               ${form_pass}                       ${user}[pass] 
    Click Element                            ${btn_enter}

Validate Message
    [Arguments]                              ${txt}
    Wait Until Page Contains                 ${txt}
    
