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
    Passo 8 - Digitar nome completo com números
    Passo 9 - Digitar email
    Passo 10 - Digitar Perfil de Acesso
    Passo 11 - Digitar CPF
    Passo 12 - Digitar Senha
    Passo 13 - Digitar Confirmar Senha
    Passo 14 - Clicar botão Salvar
    Passo 15 - Verificar o campo Nome Completo com numeros

Cenário de Teste: Não Funcional Cadastro de novo usuário com caracteres especiais no nome
    Passo 1 - Acessar a página de Login QaCoders
    Passo 2 - Digitar o email admin
    Passo 3 - Digitar a senha
    Passo 4 - Clicar no botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Usuários
    Passo 7 - Clicar no botão novo usuário
    Passo 8 - Digitar nome completo com caracteres especiais
    Passo 9 - Digitar email
    Passo 10 - Digitar Perfil de Acesso
    Passo 11 - Digitar CPF
    Passo 12 - Digitar Senha
    Passo 13 - Digitar Confirmar Senha
    Passo 14 - Clicar botão Salvar
    Passo 15 - Verificar o campo Nome Completo com caracteres especiais


Cenário de Teste: Não Funcional Cadastro de novo usuário com nome em branco
    Passo 1 - Acessar a página de Login QaCoders
    Passo 2 - Digitar o email admin
    Passo 3 - Digitar a senha
    Passo 4 - Clicar no botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Usuários
    Passo 7 - Clicar no botão novo usuário
    Passo 8 - Digitar nome completo em branco
    Passo 9 - Digitar email
    Passo 10 - Digitar Perfil de Acesso
    Passo 11 - Digitar CPF
    Passo 12 - Digitar Senha
    Passo 13 - Digitar Confirmar Senha
    Passo 14 - Clicar botão Salvar
    Passo 15 - Verificar o campo Nome Completo com nome em branco

Cenário de Teste: Não Funcional Cadastro de novo usuário com mais de 100 caracteres
    Passo 1 - Acessar a página de Login QaCoders
    Passo 2 - Digitar o email admin
    Passo 3 - Digitar a senha
    Passo 4 - Clicar no botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Usuários
    Passo 7 - Clicar no botão novo usuário
    Passo 8 - Digitar nome completo com mais de 100 caracteres
    Passo 9 - Digitar email
    Passo 10 - Digitar Perfil de Acesso
    Passo 11 - Digitar CPF
    Passo 12 - Digitar Senha
    Passo 13 - Digitar Confirmar Senha
    Passo 14 - Clicar botão Salvar
    Passo 15 - Verificar o campo Nome Completo com mais de 100 caracteres 

Cenário de Teste: Não Funcional Cadastro de novo usuário sem sobrenome
    Passo 1 - Acessar a página de Login QaCoders
    Passo 2 - Digitar o email admin
    Passo 3 - Digitar a senha
    Passo 4 - Clicar no botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Usuários
    Passo 7 - Clicar no botão novo usuário
    Passo 8 - Digitar nome completo sem sobrenome
    Passo 9 - Digitar email
    Passo 10 - Digitar Perfil de Acesso
    Passo 11 - Digitar CPF
    Passo 12 - Digitar Senha
    Passo 13 - Digitar Confirmar Senha
    Passo 14 - Clicar botão Salvar
    Passo 15 - Verificar o campo Nome Completo sem sobrenome