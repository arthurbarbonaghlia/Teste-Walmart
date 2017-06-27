#language: pt

Funcionalidade: Consultar 
    Eu, como usuário
    Tenho um API para realizar consulta de CEP
    Tanto com CEP válido, quanto inválido

@succes
Cenário: Consultar CEP com sucesso

  Dado que eu tenho um API para consultar CEP's
  Quando informo o CEP "06236050"
  Entao deve retornar a consulta com os dados do logradouro

@except
Cenário: Consultar CEP inexistente

  Dado que eu tenho um API para consultar CEP's
  Quando informo o CEP "00000000" 
  Entao deve retornar a mensagem de endereço não encontrado