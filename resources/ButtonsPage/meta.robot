
*** Settings ***
Resource                                                   ../basic.robot
Library    XML

*** Keywords ***
Open ButtonsPage
    Enter Navegation Menu
    Access the page using the menu                         BOTÕES
    Validate if is right page                              BOTÕES

Validate Button is press 
    [Arguments]                                           ${txt}
    Validate Message                                      ${txt} 


#Simple
Open SimpleButtons
    Click Text                                             ${menu_btnSilmple}
    Validate if is right page                              ${title_btnSilmple}

Click SimpleButtons
    Validate if is right page                              ${btn_btnClique}
    Click Text                                             ${btn_btnClique}
    

#Long
Open LongButtons
    Click Text                                             ${menu_btnLong}
    Validate if is right page                              ${title_btnLong}

Click LongButtons
    Validate if is right page                              ${btn_btnClique}
    Long Press                                             ${btn_btnLong}                 1000
    Wait Until Page Contains                               ${btn_success_btnLong} 

