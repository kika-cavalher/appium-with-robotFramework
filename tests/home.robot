# robot -d ./logs home.robot

*** Settings ***

Resource                                    ../resources/basic.robot  
Resource                                    ../resources/home/data.robot  
Resource                                    ../resources/home/meta.robot 

*** Test Cases ***
home screen
    Open Application with Appium
    Validate if is right text               ${text_welcome}
    Close Application with Appium

Navegation Menu page avengers
    Set Appium Timeout                      5
    Open Application with Appium
    Enter in Application
    Enter Navegation Menu
    Access page via menu                    AVENGERS
    Close Application with Appium

Navegation Menu page forms
    Set Appium Timeout                      5
    Open Application with Appium
    Enter in Application
    Enter Navegation Menu
    Access page via menu                    FORMS
    Close Application with Appium

Navegation Menu page Dialogs
    Set Appium Timeout                      5
    Open Application with Appium
    Enter in Application
    Enter Navegation Menu
    Access page via menu                    DIALOGS
    Close Application with Appium

Navegation Menu page seekBar
    Set Appium Timeout                      5
    Open Application with Appium
    Enter in Application
    Enter Navegation Menu
    Access page via menu                    SEEK BAR
    Close Application with Appium

Navegation Menu page inputs
    Set Appium Timeout                      5
    Open Application with Appium
    Enter in Application
    Enter Navegation Menu
    Access page via menu                    INPUTS
    Close Application with Appium

Navegation Menu page botoes
    Set Appium Timeout                      5
    Open Application with Appium
    Enter in Application
    Enter Navegation Menu
    Access page via menu                    BOTÕES
    Close Application with Appium
