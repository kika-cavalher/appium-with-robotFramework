*** Settings ***

Resource                                    ../resources/basic.robot  
Resource                                    ../resources/home/data.robot  
Resource                                    ../resources/home/meta.robot 

*** Test Cases ***
home screen
    Open Application with Appium
    Validate if is right text               ${text_welcome}
    Close Application with Appium
