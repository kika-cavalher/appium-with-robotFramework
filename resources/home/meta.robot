
*** Settings ***

Resource                                            ../basic.robot
Resource                                            ./data.robot

*** Keywords ***
Validate if is right text
    [Arguments]                                     ${text}

    Wait Until Page Contains                        ${text}                      5
