# robot -d ./logs ./tests/inputsPage.robot
# robot -d ./logs -i CheckBox ./tests/inputsPage.robot

*** Settings ***

Resource                                    ../resources/basic.robot  

Test Setup                                  Open Session
Test Teardown                               Close Session


*** Test Cases ***

#RadioButton
Selected RadioButton java
    [Tags]                                   RadioButton
    Open Inputs
    Open RadioButtons
    Button Selected language                 ${fld_radioBtn_java}
    Validate ButtonRadio is Checked          ${fld_radioBtn_java}

Selected RadioButton c#
    [Tags]                                   RadioButton
    Open Inputs
    Open RadioButtons
    Button Selected language                 ${fld_radioBtn_c#}
    Validate ButtonRadio is Checked          ${fld_radioBtn_c#}

Selected RadioButton Ruby
    [Tags]                                   RadioButton
    Open Inputs
    Open RadioButtons
    Button Selected language                 ${fld_radioBtn_ruby} 
    Validate ButtonRadio is Checked          ${fld_radioBtn_ruby}

Selected RadioButton Python
    [Tags]                                   RadioButton
    Open Inputs
    Open RadioButtons
    Button Selected language                 ${fld_radioBtn_python}
    Validate ButtonRadio is Checked          ${fld_radioBtn_python}

Selected RadioButton JavaScript
    [Tags]                                   RadioButton
    Open Inputs
    Open RadioButtons
    Button Selected language                 ${fld_radioBtn_javascript}
    Validate ButtonRadio is Checked          ${fld_radioBtn_javascript}

Selected RadioButton Elixir
    [Tags]                                   RadioButton
    Open Inputs
    Open RadioButtons
    Button Selected language                 ${fld_radioBtn_elixir}
    Validate ButtonRadio is Checked          ${fld_radioBtn_elixir}

Selected RadioButton Go Lang
    [Tags]                                   RadioButton
    Open Inputs
    Open RadioButtons
    Button Selected language                 ${fld_radioBtn_lang}
    Validate ButtonRadio is Checked          ${fld_radioBtn_lang}

#CheckBox
Selected CheckBox Ruby
    [Tags]                                   CheckBox
    Open Inputs
    Open CheckBox
    Button Selected language                 ${fld_checkBox_ruby}
    Validate CheckBox is Checked             ${fld_checkBox_ruby}

Selected CheckBox Python
    [Tags]                                   CheckBox
    Open Inputs
    Open CheckBox
    Button Selected language                 ${fld_checkBox_python}
    Validate CheckBox is Checked             ${fld_checkBox_python}

Selected CheckBox Java
    [Tags]                                   CheckBox
    Open Inputs
    Open CheckBox
    Button Selected language                 ${fld_checkBox_java} 
    Validate CheckBox is Checked             ${fld_checkBox_java}

Selected CheckBox javaScript
    [Tags]                                   CheckBox
    Open Inputs
    Open CheckBox
    Button Selected language                 ${fld_checkBox_javascript}
    Validate CheckBox is Checked             ${fld_checkBox_javascript}

Selected CheckBox Cobol
    [Tags]                                   CheckBox
    Open Inputs
    Open CheckBox
    Button Selected language                 ${fld_checkBox_cobol}
    Validate CheckBox is Checked             ${fld_checkBox_cobol}

Selected CheckBox C#
    [Tags]                                   CheckBox
    Open Inputs
    Open CheckBox
    Button Selected language                 ${fld_checkBox_c#}
    Validate CheckBox is Checked             ${fld_checkBox_c#}

Selected CheckBox RobotFramework
    [Tags]                                   CheckBox
    Open Inputs
    Open CheckBox
    Button Selected language                 ${fld_checkBox_robotFram}
    Validate CheckBox is Checked             ${fld_checkBox_robotFram}