*** Settings ***
Library                         AppiumLibrary
Resource                        ./home/data.robot

*** Keywords ***
Open Application with Appium
	Open Application            http://127.0.0.1:4723/wd/hub
    ...                         automationName=UiAutomator2
    ...                         platformName=Android
    ...                         deviceName=Android Emulator
    ...                         app=C:/automationTests/twp/app/twp.apk
    
    Wait Until Page Contains    ${btn_start}                                 5


Close Application with Appium
    Close All Applications