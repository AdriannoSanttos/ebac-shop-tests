Feature: Cadastro do Cliente no Checkout

    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que o usuário está na tela de cadastro no checkout da EBAC-SHOP

    Scenario: Cadastro com todos os campos obrigatórios preenchidos corretamente
        When o usuário preenche todos os campos obrigatórios com dados válidos
        And clica no botão "Finalizar Cadastro"
        Then o sistema deve prosseguir para a tela de pagamento

    Scenario Outline: Validação de campos obrigatórios e formato de e-mail
        When o usuário preenche os campos da seguinte forma:
            | nome   | sobrenome   | país   | endereço   | cidade   | cep   | telefone   | email   |
            | <nome> | <sobrenome> | <país> | <endereco> | <cidade> | <cep> | <telefone> | <email> |
        And clica no botão "Finalizar Cadastro"
        Then o sistema deve <mensagem>

        Examples:
            | nome  | sobrenome | país   | endereco   | cidade    | cep       | telefone    | email           | mensagem                                   |
            | João  | Silva     | Brasil | Rua A, 123 | São Paulo | 01000-000 | 11999999999 | joao@email.com  | prosseguir para a tela de pagamento        |
            | Maria | Santos    | Brasil | Av. B, 456 | Rio       | 20000-000 | 21999999999 | maria@email.com | prosseguir para a tela de pagamento        |
            | Pedro | Souza     | Brasil | Rua C, 789 | Salvador  | 40000-000 | 71999999999 | pedroemail.com  | exibir mensagem de erro no campo e-mail    |
            | Ana   | Oliveira  | Brasil | Rua D, 321 | Recife    | 50000-000 | 81999999999 |                 | exibir mensagem de alerta de campos vazios |
            |       |           |        |            |           |           |             |                 | exibir mensagem de alerta de campos vazios |
