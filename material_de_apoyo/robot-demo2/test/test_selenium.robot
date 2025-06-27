*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}         https://www.saucedemo.com
${USUARIO}     standard_user
${CLAVE}       secret_sauce
*** Test Cases ***
Login Exitoso en SauceDemo
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Wait Until Element Is Visible    id=user-name    timeout=10s
    Input Text    id=user-name    ${USUARIO}
    Input Password    id=password    ${CLAVE}
    Click Button    id=login-button
    Wait Until Page Contains    Products    timeout=10s
    Sleep    3s
    Close Browser
