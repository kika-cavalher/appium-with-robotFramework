
*** Settings ***
Resource                                                   ../basic.robot
Library    XML

*** Keywords ***
Open Inputs
    Enter Navegation Menu
    Access the page using the menu                         BOTÕES
    Validate if is right page                              BOTÕES



#Simple
Open RadioButtons
    Click Text                                             ${text_radioBtn}
    Validate if is right page                              ${title_radioBtn}


Validate ButtonRadio is Checked
    [Arguments]                                            ${language}

    Wait Until Element Is Visible                          ${language}
    AppiumLibrary.Element Attribute Should Match           ${language}              checked         true

#Long
Open CheckBox
    Click Text                                             ${text_checkBox}
    Validate if is right page                              ${title_checkBox}

Validate CheckBox is Checked
    [Arguments]                                            ${language}

    Wait Until Element Is Visible                          ${fld_checkBox_container}
    AppiumLibrary.Element Attribute Should Match           ${language}              checked         true

