*** Settings ***
Library                                     AppiumLibrary
Resource                                    ./home/data.robot
Resource                                    ./home/meta.robot
Resource                                    ./login/data.robot
Resource                                    ./login/meta.robot
Library                                     ./factory/User.py

*** Keywords ***
Open Application with Appium
	Open Application                        http://127.0.0.1:4723/wd/hub
    ...                                     automationName=UiAutomator2
    ...                                     platformName=Android
    ...                                     deviceName=Android Emulator
    ...                                     app=C:/automationTests/twp/app/twp.apk
    
    Wait Until Page Contains                ${btn_start}                                    5


Close Application with Appium
    Close All Applications

Enter in Application
    Click Text                              ${btn_start} 

Open Session
    Open Application with Appium
    Enter in Application
    Set Appium Timeout                      5

Close Session
    Close Application with Appium