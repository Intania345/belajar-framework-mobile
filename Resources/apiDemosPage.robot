*** Settings ***
Library                 AppiumLibrary
Variables               ../Resources/locator.yaml
# Test Setup              Start Session
# Test Teardown           Close Application

*** Variables ***

*** Keywords ***
Start Session
    Set Appium Timeout          10
    Open Application            http://localhost:4723/wd/hub
    ...                         automationName-=UiAutomator2
    ...                         platformName=Android
    ...                         deviceName=emulator-5554
    ...                         appPackage=io.appium.android.apis
    ...                         appActivity=io.appium.android.apis.ApiDemos
    ...                         autoGrantPermissions=true
    ...                         noReset=true
    Sleep                       1

Tap Accessibility
    Tap                         ${accessibility}

Tap Accessibility Node Provider
    Tap                         ${accessibility_node_provider}    

Tap Accessibility Node Querying
    Tap                         ${accessibility_node_querying}

Tap Take Out Trash
    Click Element               ${take_out_trash}

Tap Accessibility service
    Tap                         ${accessibility_service}

Tap Custom View
    Tap                         ${custom_view}

Tap Animation
    Tap                         ${animation}

#Start app 
#    Wait Until Page Contain     API Demos 

Close Session
    Capture Page Screenshot
    Close Application           noReset=true

Close Application
    Capture Page Screenshot
    Quit Application