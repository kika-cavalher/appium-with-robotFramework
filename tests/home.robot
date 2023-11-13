# robot -d ./logs ./tests/home.robot

*** Settings ***

Resource                                    ../resources/basic.robot  
Resource                                    ../resources/home/data.robot  
Resource                                    ../resources/home/meta.robot 

Test Setup                                  Open Session
Test Teardown                               Close Session


*** Test Cases ***
home screen
    [Tags]                                  HomePage
    Validate if is right page               ${text_welcome}

Navegation Menu page avengers
    [Tags]                                  AvengersPage
    Enter Navegation Menu
    Access the page using the menu          AVENGERS
    Validate if is right page               AVENGERS

Navegation Menu page forms
    [Tags]                                  FormPage
    Enter Navegation Menu
    Access the page using the menu          FORMS
    Validate if is right page               FORMS

Navegation Menu page Dialogs
    [Tags]                                  DialogsPage
    Enter Navegation Menu
    Access the page using the menu          DIALOGS
    Validate if is right page               DIALOGS

Navegation Menu page seekBar
    [Tags]                                  SeekBarPage
    Enter Navegation Menu
    Access the page using the menu          SEEK BAR
    Validate if is right page               SEEK BAR

Navegation Menu page inputs
    [Tags]                                  InputsPage
    Enter Navegation Menu
    Access the page using the menu          INPUTS
    Validate if is right page               INPUTS

Navegation Menu page botoes
    [Tags]                                  ButtonPage
    Enter Navegation Menu
    Access the page using the menu          BOTÕES
    Validate if is right page               BOTÕES
