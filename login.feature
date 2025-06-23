            #language: pt

            Funcionalidade: Login na plataforma

            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que o usuário está na página de login da EBAC-SHOP

            Cenário: Login com dados válidos
            Quando o usuário preenche o campo de e-mail com "usuario@exemplo.com", a senha com "Senha123" e clica no botão "Login"
            Então sistema deve redirecionar para a tela de checkout

            Esquema do Cenário: Login com dados inválidos
            Quando o usuário preenche o campo de e-mail com <email>, senha com <senha> e clica no botão "Login"
            Então o sistema deve exibir a mensagem de alerta <mensagem de erro>

            Exemplos:
            | email               | senha       | mensagem de erro           |
            | usuario@exemplo.com | senhaErrada | Usuário ou senha inválidos |
            | emailErrado@.com    | Senha123    | Usuário ou senha inválidos |
            | usuario@exemplo     | Senha123    | Usuário ou senha inválidos |

