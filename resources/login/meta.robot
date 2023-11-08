
*** Settings ***
Resource                                    ../basic.robot

*** Keywords ***
Open Forms
    Enter Navegation Menu
    Access the page using the menu          FORMS
    Validate if is right page               FORMS

Open Login   
    Click Text                              ${open_login}
    Validate if is right page               ${text_login}


Fill Login Forms
    ${user}                                  Factory Session                    login          
    
    Input Text                               ${form_email}                      ${user}[email] 
    Input Text                               ${form_pass}                       ${user}[pass] 
    Click Element                            ${btn_enter}