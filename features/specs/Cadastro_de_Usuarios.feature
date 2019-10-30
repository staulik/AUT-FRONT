#language: pt


@Regression
Funcionalidade: Cadastro de Usuários

Contexto:
Dado que eu esteja na tela de Cadastros de Usuarios

Cenário: Realizar Cadastro de Usuários
Quando inserir todas as informações e confirmar.
Então o sistema apresenta as informações do usuário cadastrado.

Cenário: Realizar Cadastro de Usuários sem os campos obrigatórios
Quando não inserir as informações obrigatórias e confirmar.
Então o sistema alerta o usuário que existem erros a serem corrigidos.

Cenário: Realizar Cadastro de Usuários com e-mail fora do padrao
Quando não inserir e-mail fora do padrão.
Então o sistema alerta o usuário que o e-mail está inválido.

Cenário: Realizar alteração de Usuário
Quando for alterado as informações desejadas.
Então o sistema exibe as informações alteradas.