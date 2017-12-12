#language: pt
#utf-8

Funcionalidade: Cadastrar novo usuário
	Eu como administrador do site
	Quero cadastrar um novo empregado
	Para que ele tenha acesso à área exclusiva

Cenário: Novo cadastro
Dado que estou logado como Admin
Quando solicito um novo cadastro
E preencho os campos necessários
Então o novo empregado é cadastrado

Cenário: Edição de cadastro
Dado que estou logado como Admin
Quando Encontro o cadastro a ser editado
Então Tenho acesso a tela de edição
