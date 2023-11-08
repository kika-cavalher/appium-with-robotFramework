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

