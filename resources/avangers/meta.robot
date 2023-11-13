
*** Settings ***
Resource                                    ../basic.robot

*** Keywords ***
# Open FormsPage
#     Enter Navegation Menu
#     Access the page using the menu          ${text_menu_RegisterPage}
#     Validate if is right page               ${text_menu_RegisterPage}

# Open Register   
#     Click Text                              ${btn_Register}
#     Validate if is right page               ${text_RegisterPage}


# Fill Register Forms
#     ${user}                                  Factory Session                    register          
    
#     Input Text                               ${formRegister_name}               ${user}[name] 
#     Input Text                               ${formRegister_email}              ${user}[email] 
#     Input Text                               ${formRegister_pass}               ${user}[pass] 



# Selected perfil in Forms
#     [Arguments]                              ${perfil}

#     Click Element                            ${btn_perfilChoise}
#     Wait Until Element Is Visible            ${fld_listOptions}
#     Click Text                               ${perfil}
#     Click Element                            ${btn_enter}