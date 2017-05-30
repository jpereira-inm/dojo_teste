Dado(/^que eu acesse a página da Inmetrics$/) do
  visit 'http://www.inmetrics.com.br/'
end

Quando(/^eu acessar página Quem Somos$/) do
  first(:link, 'Quem Somos').click
  #click_link('Quem Somos')
end

Entao(/^valido o texto$/) do
  assert_text('MAIS DE 15 ANOS DE ATUAÇÃO')
end