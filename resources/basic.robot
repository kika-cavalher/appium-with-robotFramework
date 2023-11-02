*** Settings ***

Library                    AppiumLibrary


*** Keywords ***
Open Application with Appium
	Open Application        http://127.0.0.1:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Android Emulator
    ...                     app=C:/automationTests/twp/app/twp.apk


Close Application with Appium
    Close All Applications