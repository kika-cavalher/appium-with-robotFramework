
*** Settings ***
Resource                                                   ../basic.robot
Library    XML

*** Keywords ***
Open Inputs
    Enter Navegation Menu
    Access the page using the menu                         INPUTS
    Validate if is right page                              INPUTS

Button Selected language    
    [Arguments]                                            ${language}
    Click Element                                          ${language}


#RadioButton
Open RadioButtons
    Click Text                                             ${text_radioBtn}
    Validate if is right page                              ${title_radioBtn}


Validate ButtonRadio is Checked
    [Arguments]                                            ${language}

    Wait Until Element Is Visible                          ${language}
    AppiumLibrary.Element Attribute Should Match           ${language}              checked         true

#CheckBox
Open CheckBox
    Click Text                                             ${text_checkBox}
    Validate if is right page                              ${title_checkBox}

Validate CheckBox is Checked
    [Arguments]                                            ${language}

    Wait Until Element Is Visible                          ${fld_checkBox_container}
    AppiumLibrary.Element Attribute Should Match           ${language}              checked         true

