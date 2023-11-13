
*** Settings ***
Resource                                    ../basic.robot

*** Keywords ***
Open AvangersPage
    Enter Navegation Menu
    Access the page using the menu          ${text_menu_avangerPage}
    Validate if is right page               ${text_menu_avangerPage}

Open List Avangers   
    Click Text                              ${btn_List_avangers}
    Validate if is right page               ${btn_List_avangers}


Delete Firts Avenger
    Swipe By Percent                        89    19    47    19
    Wait Until Element Is Visible           ${icon_remove_avager}
    Click Element                           ${icon_remove_avager}

Delete Second Avenger
    Swipe By Percent                        89    35    47    35
    Wait Until Element Is Visible           ${icon_remove_avager}
    Click Element                           ${icon_remove_avager}

Delete Third Avenger
    Swipe By Percent                        89    50    47    50
    Wait Until Element Is Visible           ${icon_remove_avager}
    Click Element                           ${icon_remove_avager}

Delete Fourth Avenger
    Swipe By Percent                        89    65    47    65
    Wait Until Element Is Visible           ${icon_remove_avager}
    Click Element                           ${icon_remove_avager}

Delete Fifth Avenger
    Swipe By Percent                        89    80    47    80
    Wait Until Element Is Visible           ${icon_remove_avager}
    Click Element                           ${icon_remove_avager}

Validate Avenger Removed
    [Arguments]                            ${avager}
    
    Wait Until Page Does Not Contain       ${avager}
    Page Should Not Contain Text           ${avager}