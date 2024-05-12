*** Settings ***
Resource  ../resources/testes_recursos.resource
Resource  ../resources/testes_excessao.resource
Resource  ../tests/testes.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

Cenário de teste: Não Funcional Cadastro de novo usuário com números no nome
    Passo 1 - Acessar a página de Login QaCoders
    Passo 2 - Digitar o email admin
    Passo 3 - Digitar a senha
    Passo 4 - Clicar no botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Usuários
    Passo 7 - Clicar no botão novo usuário
    Passo 8 - Digitar Nome Completo
    Passo 9 - Digitar email
    Passo 10 - Digitar Perfil de Acesso errado
    Passo 11 - Digitar CPF
    Passo 12 - Digitar Senha
    Passo 13 - Digitar Confirmar Senha
    Passo 14 - Clicar botão Salvar
    Passo 15 - Verificar o campo Pefil de Acesso errado

