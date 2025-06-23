      #language: pt

      Funcionalidade: Configuração de Produto

      Como cliente da EBAC-SHOP
      Quero configurar meu produto de acordo com meu tamanho e gosto
      e escolher a quantidade
      Para depois inserir no carrinho

      Contexto:
      Dado que o usuário está na página de configuração do produto

      Cenário: Validar que as seleções de cor, tamanho e quantidade são obrigatórias
      Quando o usuário tenta adicionar o produto ao carrinho sem selecionar cor, tamanho e quantidade
      Então o sistema deve exibir mensagens de validação para cada campo obrigatório

      Esquema do Cenário: Limitar a quantidade máxima de produtos por venda
      Quando o usuário seleciona <quantidade> unidades do produto e clica no botão "Adicionar ao carrinho"
      Então o sistema deve <resultado>

      Exemplos:
      | quantidade | resultado                                                |
      | 5          | adicionar os produtos ao carrinho                        |
      | 10         | adicionar os produtos ao carrinho                        |
      | 11         | exibir a mensagem de erro "Máximo de 10 itens por venda" |

Cenário: Limpar a configuração do produto
Dado que o usuário já selecionou cor, tamanho e quantidade
Quando o usuário clica no botão "Limpar"
Então o sistema deve resetar todas as seleções para o estado original
