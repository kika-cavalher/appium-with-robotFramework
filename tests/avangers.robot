# robot -d ./logs ./tests/register.robot
# robot -d ./logs -i LongButton ./tests/register.robot

*** Settings ***

Resource                                    ../resources/basic.robot  

Test Setup                                  Open Session
Test Teardown                               Close Session


*** Test Cases ***

#RadioButton
# Register Dev Success
#     [Tags]                                   registerDev

#     Open FormsPage
#     Open Register 
#     Fill Register Forms
#     Selected perfil in Forms                ${opt_perfilDev}
#     Validate Message                        ${register_success}
