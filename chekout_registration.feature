            #language: pt

            Funcionalidade: Cadastro do Cliente no Checkout

            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o usuário está na tela de cadastro no checkout da EBAC-SHOP

            Cenário: Cadastro com todos os campos obrigatórios preenchidos corretamente
            Quando usuário preenche todos os campos obrigatórios com dados válidos e clica no botão "Finalizar Cadastro"
            Então o sistema deve prosseguir para a tela de pagamento

            Esquema do Cenário: Validação de campos obrigatórios e formato de e-mail
            Quando o usuário preenche os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email> e clica no botão "Finalizar Cadastro"
            Então o sistema deve exibir uma <mensagem>

            Exemplos:
            | nome  | sobrenome | país   | endereco   | cidade    | cep       | telefone    | email           | mensagem                                   |
            | João  | Silva     | Brasil | Rua A, 123 | São Paulo | 01000-000 | 11999999999 | joao@email.com  | prosseguir para a tela de pagamento        |
            | Maria | Santos    | Brasil | Av. B, 456 | Rio       | 20000-000 | 21999999999 | maria@email.com | prosseguir para a tela de pagamento        |
            | Pedro | Souza     | Brasil | Rua C, 789 | Salvador  | 40000-000 | 71999999999 | pedro@email.com | exibir mensagem de erro no campo e-mail    |
            | Ana   | Oliveira  | Brasil | Rua D, 321 | Recife    | 50000-000 | 81999999999 |                 | exibir mensagem de alerta de campos vazios |
            |       |           |        |            |           |           |             |                 | exibir mensagem de alerta de campos vazios |
