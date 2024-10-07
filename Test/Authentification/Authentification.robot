*** Settings ***
Resource    ../squash_resources.resource

*** Test Cases ***
Authentification
    [Setup]    Setup Test Environment
    Open Login Page
    Enter Email
    Click Submit Button
    Enter Password
    Click Login Button
    Verify Home Page
    # Prendre une capture d'écran de la page après le clic
    Capture Page Screenshot    clicked_element_screenshot.png
    [Teardown]    Teardown Test Environment
