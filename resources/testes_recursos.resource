*** Settings ***
Library    SeleniumLibrary    
Library    BuiltIn
Library    Collections
Library    String
Library    OperatingSystem
Library    FakerLibrary   locale=pt_BR         

*** Variables ***
${URL}                  http://automacao.qacoders-academy.com.br/login
${emailInput}          //input[contains(@type,'text')]
${emailQaCoders}        sysadmin@qacoders.com
${senhaInput}           //input[contains(@type,'password')]
${senhaQaCoders}         1234@Test
${entrarButton}          //button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium css-ojf4v2'][contains(.,'Entrar')]
${cadastrospan}        //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${usuariospan}          //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Usuários')]
${novousuariobutton}    //button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
${NomeCompletoInput}    //input[contains(@name,'fullName')]
${RANDOM INDEX}=      Evaluate    random.randint(0, len(primeiros_nomes)-1)    random
${novoCadastro}          //h5[@class='css-np5g2k'][contains(.,'Novo Cadastro')]
${emailCadastroInput}    //input[contains(@name,'mail')]
${emailcadastro}            @teste.com.br
${perfilAcessoInput}                //input[contains(@name,'accessProfile')]
${perfilAcesso}                      ADMIN
${CPFInput}                          //input[contains(@name,'cpf')]
${CPF}                                @{EMPTY}
${senhaInputNovoCadastro}            //input[contains(@name,'password')]
${senhaNovoCadastro}                 4321@tesT
${confirmarSenhaNovoCadastro}        //input[contains(@name,'confirmPassword')]
${salvarButton}                      //button[@type='submit'][contains(.,'SALVAR NOVO')]
                    


*** Keywords ***

Gerar Nome Completo Aleatório
    ${NOME}     FakerLibrary.name

Generate Unique CPF
    ${CPF}=    FakerLibrary.CPF
    ${CPF}=    Replace String    ${CPF}    .    ${EMPTY}
    ${CPF}=    Replace String    ${CPF}    -    ${EMPTY}
    [Return]    ${CPF}



Abrir o navegador
    Open Browser  browser=chrome
    Maximize Browser Window
Fechar o navegador
    Close Browser



Passo 1 - Acessar a página de Login QaCoders
    Go To   url=${URL}
Passo 2 - Digitar o email admin
    Wait Until Element Is Visible    locator=${emailInput} 
    Input Text                       locator=${emailInput}     text=${emailQaCoders}    
    Sleep    1s
Passo 3 - Digitar a senha
    Wait Until Element Is Visible    locator=${senhaInput} 
    Input Password                   locator=${senhaInput}    password=${senhaQaCoders}
    Sleep    1s

Passo 4 - Clicar no botão Entrar
    Wait Until Element Is Visible    locator=${entrarButton}
    Click Button                     locator=${entrarButton}    
    Sleep    1s   
Passo 5 - Clicar em Cadastro
     Wait Until Element Is Visible    locator=${cadastrospan} 
     Click Element                    locator=${cadastrospan} 
     Sleep    1s

Passo 6 - Clicar em Usuários
     Wait Until Element Is Visible    locator=${usuariospan}   
     Click Element                    locator=${usuariospan}   
     Sleep    1s

Passo 7 - Clicar no botão novo usuário
     Wait Until Element Is Visible    locator=${novousuariobutton}  
     Click Button                     locator=${novousuariobutton}  
     Sleep    1s

Passo 8 - Digitar Nome Completo
     ${NOME}     FakerLibrary.name
     Wait Until Element Is Visible    locator=${novoCadastro} 
     Input Text                       locator=${NomeCompletoInput}   text=${NOME}  
     Sleep    1s

Passo 9 - Digitar email
    ${EMAILFAKE}                FakerLibrary.Email
     Click Element                    locator=${emailCadastroInput}
     Input Text                       locator=${emailCadastroInput}  text=${EMAILFAKE} 
     Sleep    1s

Passo 10 - Digitar Perfil de Acesso
     Click Element                    locator=${perfilAcessoInput} 
     Input Text                       locator=${perfilAcessoInput}   text=${perfilAcesso}  
     Sleep    1s

Passo 11 - Digitar CPF
    
    
    ${CPF}=    Generate Unique CPF
    Click Element    locator=${CPFInput} 
    Input Text       locator=${CPFInput}    text=${CPF} 
    Sleep    1s
Passo 12 - Digitar Senha
    Click Element                    locator=${senhaInputNovoCadastro}
    Input Text                       locator=${senhaInputNovoCadastro}  text=${senhaNovoCadastro} 
    Sleep    1s

Passo 13 - Digitar Confirmar Senha
    Click Element                    locator=${confirmarSenhaNovoCadastro}
    Input Text                       locator=${confirmarSenhaNovoCadastro}  text=${senhaNovoCadastro} 
    Sleep    1s

Passo 14 - Clicar botão Salvar
     Click Button                     locator=${salvarButton}  
     Sleep    2s

