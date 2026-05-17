*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                     https://bugbank.netlify.app/
${BROWSER}                 chrome

${BTN_REGISTRAR}           xpath=//button[contains(.,'Registrar')]
${INPUT_EMAIL}             xpath=(//input[@type='email'])[2]
${INPUT_NOME}              xpath=//input[@name='name']
${INPUT_PASSWORD}          xpath=(//input[@name='password'])[2]
${INPUT_CONFIRM_PASSWORD}  xpath=//input[@name='passwordConfirmation']
${TOGGLE_BALANCE}          xpath=//input[@type='checkbox']
${BTN_CADASTRAR}           xpath=//button[@type='submit' and contains(.,'Cadastrar')]
${MODAL_SUCESSO}           xpath=//div[contains(@id,'modalText')]

*** Test Cases ***
Realizar Primeiro Cadastro
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Click Button    ${BTN_REGISTRAR}

    Input Text        ${INPUT_EMAIL}             teste.robot@email.com
    Input Text        ${INPUT_NOME}              Usuario Robot
    Input Password    ${INPUT_PASSWORD}          123456
    Input Password    ${INPUT_CONFIRM_PASSWORD}  123456

    # Wait Until Element Is Visible    ${TOGGLE_BALANCE}    10s

    # Click Element    ${TOGGLE_BALANCE}

    Wait Until Element Is Visible      ${BTN_CADASTRAR}    10s
    Wait Until Element Is Enabled      ${BTN_CADASTRAR}    10s
    Scroll Element Into View           ${BTN_CADASTRAR}
    Click Element                      ${BTN_CADASTRAR}
    Click Button                       ${BTN_CADASTRAR}

    Wait Until Element Is Visible    ${MODAL_SUCESSO}    10s

    Element Should Contain
    ...    ${MODAL_SUCESSO}
    ...    conta foi criada com sucesso

    Capture Page Screenshot

    Sleep    3s

    Close Browser