
*** Settings ***
Resource                                            ../basic.robot

*** Keywords ***
Enter Navegation Menu
    Wait Until Element Is Visible                   ${btn_menu}
    Click Element                                   ${btn_menu}
    Wait Until Element Is Visible                   ${element_menu}

Access the page using the menu
    [Arguments]                                     ${page}

    Click Text                                      ${page}
    Wait Until Element Is Visible                   ${page_title}
    AppiumLibrary.Element Text Should Be            ${page_title}                ${page}    

Validate if is right page
    [Arguments]                                     ${text}

    Wait Until Page Contains                        ${text}
