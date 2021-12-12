*** Settings ***
Resource            ../Resources/apiDemosPage.robot
Variables           ../Resources/locator.yaml
Test Setup          Start Session
Test Teardown       Close Application

*** Test Cases ***
As a user I want to open API Demos apps
    Page Should Contain Text                Accessibility
    Tap                                     ${accessibility}
    Sleep                                   1
    Page Should Contain Text                Accessibility Node Provider
    Sleep                                   1 
    Capture Page Screenshot

As a user I want to validate inside the accessibility node provider should showing enable talkback setting
    Tap Accessibility
    Sleep                                   1
    Tap Accessibility Node Provider
    Page Should Contain Text                Enable TalkBack and Explore-by-touch from accessibility settings. Then touch the colored squares.
    Capture Page Screenshot

As a user I want to validate inside the accessibility node Querying
    Tap Accessibility
    Sleep                                   1
    Tap Accessibility Node Querying
    #Page Should Contain Text                1. Enable QueryBack (Settings -> Accessibility -> QueryBack). 2. Enable Explore-by-Touch (Settings -> Accessibility -> Explore by Touch). 3. Touch explore the list.
    Page Should Contain Text                Take out Trash
    Capture Page Screenshot
    # Sleep                                   1
    # Tap Take Out Trash
    # Capture Page Screenshot

As a user I want to validate inside the accessibility node service
    Tap Accessibility
    Sleep                                   1
    Tap Accessibility service
    Sleep                                   1
    Capture Page Screenshot

As a user I want to validate inside the custom view
    Tap Accessibility
    Sleep                                   1
    Tap Custom View                         
    Sleep                                   1
    Page Should Contain Text                1. Enable TalkBack (Settings -> Accessibility -> TalkBack)
    capture Page Screenshot

As a user I want to check Animation Page
    Tap Animation
    Sleep                                   1
    Page Should Contain                     Bouncing Balls
    Capture Page Screenshot
    