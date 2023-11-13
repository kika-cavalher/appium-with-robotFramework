# robot -d ./logs ./tests/ButtonsPage.robot
# robot -d ./logs -i LongButton ./tests/ButtonsPage.robot

*** Settings ***

Resource                                    ../resources/basic.robot  

Test Setup                                  Open Session
Test Teardown                               Close Session


*** Test Cases ***

#RadioButton
Selected Simple Button
    [Tags]                                   SimpleButton
    Open ButtonsPage
    Open SimpleButtons
    Click SimpleButtons
    Validate Button is press                 ${txt_toaster_btnSilmple}

Selected Long Button
    [Tags]                                   LongButton
    Open ButtonsPage
    Open LongButtons
    Click LongButtons
    Validate Button is press                 ${btn_success_btnLong}