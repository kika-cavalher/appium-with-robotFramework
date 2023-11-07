
*** Settings ***
Resource                                            ../basic.robot

*** Keywords ***
Open Login
    Open Session
    Enter Navegation Menu
    Access page via menu                    FORMS
    Validate if is right page               FORMS



