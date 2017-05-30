Dado(/^que eu acesse a página de cadastro$/) do
 visit 'http://demoqa.com'
 click_link('Registration')
end

Quando(/^eu inserir os dados$/) do
 #binding.pry
 fill_in('name_3_firstname',:with=>'Jon')
 fill_in('name_3_lastname',:with=>'InMetrics')
 find(:xpath,'//*[@id="pie_register"]/li[2]/div/div/input[1]').click
 find(:xpath,'//*[@id="pie_register"]/li[3]/div/div[1]/input[1]').click
 select('Benin', :from=>'dropdown_7')
 select('5', :from=>'date_8[date][mm]')
 select('20', :from=>'date_8[date][dd]')
 select('1992', :from=>'date_8[date][yy]')
 fill_in('phone_9',:with=>'2155215566')
 fill_in('username',:with=>'joninm')
 fill_in('email_1',:with=>'jon@gmail.com')
 fill_in('password_2',:with=>'HFU@37evu*')
 fill_in('confirm_password_password_2',:with=>'HFU@37evu*')
 click_button('Submit')
end

Entao(/^o QA será cadastrado com sucesso$/) do
  assert_text('Thank you for your registration')
end
