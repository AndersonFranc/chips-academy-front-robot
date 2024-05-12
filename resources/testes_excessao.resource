*** Settings ***
Library    SeleniumLibrary    
Library    BuiltIn
Library    Collections
Library    String
Resource   ../resources/testes_recursos.resource

*** Variables ***

*** Keywords ***
    
Passo 8 - Digitar nome completo com números
     Wait Until Element Is Visible    locator=${novoCadastro} 
     Input Text                       locator=${NomeCompletoInput}   text=12345678   
     Sleep    1s

Passo 15 - Verificar o campo Nome Completo com numeros
    Wait Until Page Contains            O campo nome completo não deve conter números
    Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'O campo nome completo não deve conter números')]

Passo 8 - Digitar nome completo com caracteres especiais
     Wait Until Element Is Visible    locator=${novoCadastro} 
     Input Text                       locator=${NomeCompletoInput}   text=Anderson"$#.,Francelino  
     Sleep    1s

Passo 15 - Verificar o campo Nome Completo com caracteres especiais
     Wait Until Page Contains            Informe o nome e sobrenome com as iniciais em letra maiúscula e sem caracteres especiais.
     Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Informe o nome e sobrenome com as iniciais em letra maiúscula e sem caracteres especiais.')]


Passo 8 - Digitar nome completo em branco
     Wait Until Element Is Visible    locator=${novoCadastro} 
     Input Text                       locator=${NomeCompletoInput}   text=
     Sleep    1s

Passo 15 - Verificar o campo Nome Completo com nome em branco
     Wait Until Page Contains            O campo nome completo é obrigatório
     Wait Until Page Contains Element    locator=//p[@class='css-bbipig'][contains(.,'O campo nome completo é obrigatório')]

Passo 8 - Digitar nome completo com mais de 100 caracteres
     Wait Until Element Is Visible    locator=${novoCadastro} 
     Input Text                       locator=${NomeCompletoInput}   text=Antonio Francisco Xavier Frederico Pereira Alves da Silva Santos Oliveira Rodrigues Martins Garcia Junior
     Sleep    1s

Passo 15 - Verificar o campo Nome Completo com mais de 100 caracteres
     Wait Until Page Contains            O nome completo deve ter no máximo 100 caracteres.
     Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'O nome completo deve ter no máximo 100 caracteres.')]

Passo 8 - Digitar nome completo sem sobrenome
     Wait Until Element Is Visible    locator=${novoCadastro} 
     Input Text                       locator=${NomeCompletoInput}   text=Antonio
     Sleep    1s

Passo 15 - Verificar o campo Nome Completo sem sobrenome
     Wait Until Page Contains            Informe o nome e sobrenome com as iniciais em letra maiúscula e sem caracteres especiais.
     Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Informe o nome e sobrenome com as iniciais em letra maiúscula e sem caracteres especiais.')]



Passo 11 - Digitar CPF com tamanho menor
     Click Element                    locator=${CPFInput} 
     Input Text                       locator=${CPFInput}   text=123456789
     Sleep    1s

Passo 15 - Verificar o campo CPF com tamanho menor
     Wait Until Page Contains            Deve preencher o CPF com 11 dígitos
     Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Deve preencher o CPF com 11 dígitos')]

Passo 11 - Digitar CPF com tamanho maior
     Click Element                    locator=${CPFInput} 
     Input Text                       locator=${CPFInput}   text=123456789123
     Sleep    1s

Passo 15 - Verificar o campo CPF com tamanho maior
     Wait Until Page Contains            Deve preencher o CPF com 11 dígitos
     Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Deve preencher o CPF com 11 dígitos')]


Passo 11 - Digitar CPF com letras
     Click Element                    locator=${CPFInput} 
     Input Text                       locator=${CPFInput}   text=123456789xT
     Sleep    1s

Passo 15 - Verificar o campo CPF com letras
     Wait Until Page Contains            Campo CPF deve conter apenas números
     Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Campo CPF deve conter apenas números')]


Passo 10 - Digitar Perfil de Acesso errado
    
     Click Element                    locator=${perfilAcessoInput} 
     Input Text                       locator=${perfilAcessoInput}   text=ALUNO 
     Sleep    1s

Passo 15 - Verificar o campo Pefil de Acesso errado
     Wait Until Page Contains            O campo perfil de acesso deve ser preenchido de acordo com o seu cargo exemplo: ADMIN.
     Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'O campo perfil de acesso deve ser preenchido de acordo com o seu cargo exemplo: ADMIN.')]


Passo 12 - Digitar Senha somente com numeros
    Click Element                    locator=${senhaInputNovoCadastro}
    Input Text                       locator=${senhaInputNovoCadastro}  text=123456
    Sleep    1s

Passo 13 - Digitar Confirmar Senha somente com numeros
    Click Element                    locator=${confirmarSenhaNovoCadastro}
    Input Text                       locator=${confirmarSenhaNovoCadastro}  text=123456 
    Sleep    1s

Passo 15 - Verificar o campo senha com numeros
     Wait Until Page Contains            Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.
     Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.')]

Passo 12 - Digitar Senha somente com letras
    Click Element                    locator=${senhaInputNovoCadastro}
    Input Text                       locator=${senhaInputNovoCadastro}  text=AAAabbddcc
    Sleep    1s

Passo 13 - Digitar Confirmar Senha somente com letras
    Click Element                    locator=${confirmarSenhaNovoCadastro}
    Input Text                       locator=${confirmarSenhaNovoCadastro}  text=AAAabbddcc 
    Sleep    1s

Passo 15 - Verificar o campo senha com letras
     Wait Until Page Contains            Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.
     Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.')]

Passo 12 - Digitar Senha somente com espaço
    Click Element                    locator=${senhaInputNovoCadastro}
    Input Text                       locator=${senhaInputNovoCadastro}  text=AAAa bbddcc&
    Sleep    1s

Passo 13 - Digitar Confirmar Senha somente com espaço
    Click Element                    locator=${confirmarSenhaNovoCadastro}
    Input Text                       locator=${confirmarSenhaNovoCadastro}  text=AAAa bbddcc&
    Sleep    1s

Passo 15 - Verificar o campo senha com espaço
     Wait Until Page Contains            Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.
     Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.')]

