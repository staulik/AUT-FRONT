#language: pt


Funcionalidade: Lista de Usuários

Contexto:
Dado que eu esteja na tela de Pesquisa de Usuários

@pesquisa
Cenário: Realizar Pesquisa de Usuários
Quando pesquisar o usuário desejado.
Então o sistema retorna as informações do usuário.