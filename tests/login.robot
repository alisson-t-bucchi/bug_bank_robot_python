*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://bugbank.netlify.app/

*** Test Cases ***
Abrir BugBank
    Open Browser    ${URL}    chrome
    Sleep    3s
    Close Browser