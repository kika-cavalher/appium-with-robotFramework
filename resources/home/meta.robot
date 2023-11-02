
*** Settings ***
Resource                                            ../basic.robot

*** Keywords ***
Enter in Application
    Click Text                                      ${btn_start} 


Enter Navegation Menu
    Wait Until Element Is Visible                   ${btn_menu}
    Click Element                                   ${btn_menu}
    Wait Until Element Is Visible                   ${element_menu}

Access page via menu
    [Arguments]                                     ${page}

    Click Text                                      ${page}
    Wait Until Element Is Visible                   ${page_title}
    Element Text Should Be                          ${page_title}                ${page}    

Validate if is right text
    [Arguments]                                     ${text}

    Wait Until Page Contains                        ${text}
