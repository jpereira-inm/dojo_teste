#language: pt
#utf-8

@enviar_curriculo
Funcionalidade: Enviar Curriculo
Eu como Usuario
Quero enviar meu curriculo
Para candidatura a vaga

Cenário: Envio de curriculo
	Dado que eu acesse o Rio Vagas
	Quando anexar meu curriculo
	Entao a candidatura sera realizada com sucesso