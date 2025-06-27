*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://example.com

*** Test Cases ***
Open Example Website
    Open Browser    ${URL}    Chrome
    Title Should Be    Example Domain
    Close Browser
