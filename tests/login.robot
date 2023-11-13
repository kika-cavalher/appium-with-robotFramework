# robot -d ./logs ./tests/login.robot

*** Settings ***

Resource                                    ../resources/basic.robot  
Resource                                    ../resources/login/data.robot  
Resource                                    ../resources/login/meta.robot 

Test Setup                                  Open Session
Test Teardown                               Close Session


*** Test Cases ***
Login Success
    [Tags]                                  Login
    Open Forms
    Open Login
    Fill Login Forms                     
    Validate Message                         ${login_success}

