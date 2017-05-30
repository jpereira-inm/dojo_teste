#language: pt
#utf-8

@editar_empregado
Funcionalidade: Editar empregado
Eu como Administrador
Quero eu editar um empregado cadastrato
Para atualizar informacoes

Cenário: Edicao de empregado
	Dado que eu acesse o Portal como Adm
	Quando eu editar as informacoes de um empregado
	Entao o cadastro sera atualizado com sucesso