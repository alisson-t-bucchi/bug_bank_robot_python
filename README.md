# BugBank QA Automation

Projeto de automação de testes end-to-end da aplicação BugBank utilizando Robot Framework, Selenium e Python.

---

# Sobre o projeto

Este projeto tem como objetivo validar funcionalidades críticas da aplicação BugBank através de testes automatizados UI.

A automação cobre cenários como:

- Cadastro de usuário
- Login
- Transferência
- Validações negativas
- Fluxos críticos
- Regressão básica

Aplicação alvo:

https://bugbank.netlify.app/

---

# Tecnologias utilizadas

- Python
- Robot Framework
- SeleniumLibrary
- ChromeDriver
- Visual Studio Code

---

# Estrutura do projeto

```text
bug_bank_robot_python/
│
├── tests/
│   ├── login.robot
│   ├── cadastro.robot
│   └── transferencia.robot
│
├── resources/
│   ├── pages/
│   ├── keywords/
│   └── variables/
│
├── results/
│
├── requirements.txt
│
├── README.md
│
└── venv/
```

---

# Pré-requisitos

Instalar:

- Python 3.11+
- Google Chrome
- Visual Studio Code

---

# Instalação do projeto

## Clonar repositório

```bash
git clone https://github.com/seu-usuario/bug_bank_robot_python.git
```

---

## Entrar na pasta

```bash
cd bug_bank_robot_python
```

---

## Criar ambiente virtual

### Windows

```bash
python -m venv venv
```

---

## Ativar ambiente virtual

### PowerShell

```powershell
.\venv\Scripts\Activate.ps1
```

### CMD

```cmd
venv\Scripts\activate
```

---

# Instalar dependências

```bash
pip install -r requirements.txt
```

Ou manualmente:

```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

---

# Executar testes

## Executar todos os testes

```bash
robot tests/
```

---

## Executar um teste específico

```bash
robot tests/login.robot
```

---

## Executar com relatório

```bash
robot -d results tests/
```

---

# Relatórios

Após execução serão gerados:

```text
results/
├── log.html
├── report.html
└── output.xml
```

Abra:

```text
results/report.html
```

no navegador.

---

# Exemplo de teste

```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://bugbank.netlify.app/

*** Test Cases ***
Abrir BugBank
    Open Browser    ${URL}    chrome
    Sleep    3s
    Close Browser
```

---

# Estratégia de automação

O projeto utiliza:

- Page Object Model
- Separação de responsabilidades
- Keywords reutilizáveis
- Variáveis centralizadas
- XPath resiliente
- Evidências automáticas

---

# Estratégia de seletores

Prioridade adotada:

1. id
2. name
3. placeholder
4. data-testid
5. XPath contextual

Evita-se:

- classes dinâmicas
- styled-components
- seletores frágeis

---

# Evidências

Captura automática de screenshots:

```robot
Capture Page Screenshot
```

---

# Melhorias futuras

- Integração CI/CD
- GitHub Actions
- Docker
- Execução paralela
- Allure Reports
- Faker para massa dinâmica
- Testes API
- Playwright

---

# Extensões recomendadas VS Code

- Robot Framework Language Server
- Python Extension
- Thunder Client
- Material Icon Theme

---

# Executar em paralelo

Instalar:

```bash
pip install robotframework-pabot
```

Executar:

```bash
pabot tests/
```

---

# Troubleshooting

## Erro de ambiente virtual

Caso utilize Python da Microsoft Store:

- remover versão Store
- instalar Python oficial:
  https://www.python.org/downloads/

---

## Erro ChromeDriver

Atualizar Selenium:

```bash
pip install -U selenium
```

---

## ElementClickInterceptedException

Utilizar:

```robot
Scroll Element Into View
Wait Until Element Is Visible
Execute JavaScript
```

---

# Autor

Projeto desenvolvido para estudos e portfólio QA Automation.

---

# Licença

Projeto para fins educacionais.