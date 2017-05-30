Dado(/^que eu acesse o Rio Vagas$/) do
  visit 'https://www.riovagas.com.br/riovagas/2017/05/24/consultor-de-atendimento-juridico-empresa-do-ramo-juridico-r-1-60000-freguesia/'
	if has_xpath?('//*[@id="post-1879845"]/div[3]/div[6]/a')
		find(:xpath,'//*[@id="post-1879845"]/div[3]/div[6]/a').click
	elsif has_xpath?('//*[@id="post-1878284"]/div[3]/div[6]/a')
		find(:xpath,'//*[@id="post-1878284"]/div[3]/div[6]/a').click
	elsif has_xpath?('//*[@id="post-1875435"]/div[3]/div[6]/a')
		find(:xpath,'//*[@id="post-1875435"]/div[3]/div[6]/a').click
	end
end

Quando(/^anexar meu curriculo$/) do
  	fill_in('nome_candidato',:with=>'Aline Cella Lima')
  	fill_in('email_candidato',:with=>'aline.cella@yahoo.com.br')
  	fill_in('celular_candidato',:with=>'2  1  9  7  9  2  4  9  6  4  5')
  	fill_in('telefone_candidato',:with=>'2  1  2  7  5  1  7  0  9  3')
	if has_xpath?('//*[@id="anexo"]')
		attach_file('anexo', 'C:\Users\Inmetrics\Desktop\ALINE CELLA LIMA.docx')
		find(:xpath,'//*[@id="post-1878284"]/div[3]/div[4]/form/button').click
	elsif has_xpath?('//*[@id="anexo"]')
		find(:xpath,'//*[@id="forma_envio"]').click
		attach_file('anexo', 'C:\Users\Inmetrics\Desktop\ALINE CELLA LIMA.docx')
		find(:xpath,'//*[@id="post-1878284"]/div[3]/div[4]/form/button').click
	elsif
  		fill_in('curriculo_candidato',:with=>'ALINE CELLA LIMA Brasileira, 27 anos, solteira Vilar dos Teles, São João de Meriti - RJ (21) 2751-7093 / (21) 97924-9645 aline.cella@yahoo.com.br OBJETIVO: Assistente Administrativo Jurídico; Assistente Jurídico; Auxiliar Jurídico; RESUMO: Cursando o último período de direito, possuo experiência em quase 5 anos na área jurídica. Atuando em elaboração, acompanhamento e protocolação de petições. Atendimento ao cliente. Conhecimentos em sistemas jurídicos eletrônicos e On-line. Informática básica e digitação. FORMAÇÃO Ensino Superior – Direito Universidade Estácio de Sá Previsão de Formatura: Jun/17 Período: 10º Turno: Noite Ensino Médio - Normal Instituto de Educação Prof. Moysés Henrique dos Santos Período: Jan/06 à Dez/08 EXPERIÊNCIAS PROFISSIONAIS Cargo: Estagiária Jurídica Área de Atuação: Trabalhista Período: setembro de 2015 até Atual Empresa: Caixa Econômica Federal – Centro/RJ Atividades: protocolo de petições, contestação, acompanhamento processual, diligências, elaboração de peças judiciais, alimentação de Sistema Eletrônico (PJE) Cargo: Estagiária Jurídica Área de Atuação: Consumidor Período: setembro de 2013 até agosto de 2014 Empresa: Escritório Fragata e Antunes Advogados Associados – Centro/RJ Atividades: elaboração, protocolo e retorno de petições, encerramento de pastas, análise e inclusão de informações em sistema, extração GRERJ eletrônico (custas judiciais). Cargo: Estagiária Área de Atuação: Vara de Família Período: junho de 2011 até junho de 2013 Empresa: Defensoria Pública do Estado do Rio de Janeiro – São João de Meriti/RJ Atividades: atendimento aos usuários da Defensoria Pública, elaboração de petições, ofícios e protocolos. FORMAÇÃO COMPLEMENTAR - Informática Básica: Microlins Escola de Informática; - Curso de Digitação: Microlins Escola de Informática; - Curso Complementar em Direito Administrativo, Constitucional e Eleitoral: Degrau Cultural. INFORMÁTICA: Conhecimentos em Pacote Office, Internet, Digitação e Sistema Eletrônico (PJE)')
		find(:xpath,'//*[@id="post-1879845"]/div[3]/div[4]/form/button').click
	end
end

Entao(/^a candidatura sera realizada com sucesso$/) do
 	assert_text('Currículo enviado com sucesso!')
end