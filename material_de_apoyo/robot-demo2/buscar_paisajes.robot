*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}             https://www.bing.com
${BROWSER}         Edge
${SEARCH_TERM}     paisajes más hermosos de Argentina
*** Test Cases ***
Buscar Paisajes En Bing Imagenes
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    name=q    timeout=10s
    Input Text    name=q    ${SEARCH_TERM}
    Sleep    1s
    Press Keys    None    RETURN
    Wait Until Page Contains Element    xpath=//nav//a[contains(text(), 'Imágenes')]    timeout=10s
    Click Element    xpath=//nav//a[contains(text(), 'Imágenes')]
    Wait Until Page Contains Element    xpath=//div[contains(@class, 'imgpt')]    timeout=10s
    Sleep    3s
    Capture Page Screenshot
    Close Browser
