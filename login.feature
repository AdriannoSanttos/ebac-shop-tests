Feature: Login na plataforma

    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Background:
        Given que o usuário está na página de login da EBAC-SHOP

    Scenario: Login com dados válidos
        When o usuário preenche o campo de e-mail com "usuario@exemplo.com"
        And preenche o campo de senha com "Senha123"
        And clica no botão "Login"
        Then o sistema deve redirecionar para a tela de checkout

    Scenario Outline: Login com dados inválidos
        When o usuário preenche o campo de e-mail com <email>
        And preenche o campo de senha com <senha>
        And clica no botão "Login"
        Then o sistema deve exibir a mensagem de alerta <mensagem de erro>

        Examples:
            | email               | senha       | mensagem de erro                 |
            | usuario@exemplo.com | senhaErrada | Usuário ou senha inválidos |
            | emailErrado@.com    | Senha123    | Usuário ou senha inválidos |
            | usuario@exemplo     | Senha123    | Usuário ou senha inválidos |

