#language: en

Feature: Configuração de Produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  e escolher a quantidade
  Para depois inserir no carrinho

  Background:
    Given que o usuário está na página de configuração do produto

  Scenario: Validar que as seleções de cor, tamanho e quantidade são obrigatórias
    When o usuário tenta adicionar o produto ao carrinho sem selecionar cor, tamanho e quantidade
    Then o sistema deve exibir mensagens de validação para cada campo obrigatório

  Scenario Outline: Limitar a quantidade máxima de produtos por venda
    When o usuário seleciona <quantidade> unidades do produto
    And clica no botão "Adicionar ao carrinho"
    Then o sistema deve <resultado>

    Examples:
      | quantidade | resultado                              |
      | 5          | adicionar os produtos ao carrinho      |
      | 10         | adicionar os produtos ao carrinho      |
      | 11         | exibir a mensagem de erro "Máximo de 10 itens por venda" |

  Scenario: Limpar a configuração do produto
    Given que o usuário já selecionou cor, tamanho e quantidade
    When o usuário clica no botão "Limpar"
    Then o sistema deve resetar todas as seleções para o estado original
