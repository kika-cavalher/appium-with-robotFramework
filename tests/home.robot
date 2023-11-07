# robot -d ./logs ./tests/home.robot

*** Settings ***

Resource                                    ../resources/basic.robot  
Resource                                    ../resources/home/data.robot  
Resource                                    ../resources/home/meta.robot 

Test Setup                                  Open Session
Test Teardown                               Close Session


*** Test Cases ***
home screen
    Validate if is right text               ${text_welcome}

Navegation Menu page avengers
    Enter Navegation Menu
    Access page via menu                    AVENGERS

Navegation Menu page forms
    Enter Navegation Menu
    Access page via menu                    FORMS

Navegation Menu page Dialogs
    Enter Navegation Menu
    Access page via menu                    DIALOGS

Navegation Menu page seekBar
    Enter Navegation Menu
    Access page via menu                    SEEK BAR

Navegation Menu page inputs
    Enter Navegation Menu
    Access page via menu                    INPUTS

Navegation Menu page botoes
    Enter Navegation Menu
    Access page via menu                    BOTÕES
