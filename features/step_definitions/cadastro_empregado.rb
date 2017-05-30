Dado(/^que eu acesse o Portal$/) do
  	visit 'http://opensource.demo.orangehrmlive.com/'
  	fill_in('txtUsername',:with=>'Admin')
	fill_in('txtPassword',:with=>'admin')
	click_button('btnLogin')
end

Quando(/^eu incluir as informacoes/) do
	click_link('menu_pim_viewPimModule')
	click_link('menu_pim_addEmployee')
	fill_in('firstName',:with=>'Diogo6')
	fill_in('middleName',:with=>'Silva')
	fill_in('lastName',:with=>'Tavares')
	$teste = find(:xpath, '//*[@id="employeeId"]').value
	check('chkLogin')
	fill_in('user_name',:with=>'Diogo6Tav')
	fill_in('user_password',:with=>'Qwe123po')
	fill_in('re_password',:with=>'Qwe123po')
	click_button('btnSave')
end

Entao(/^o usuario sera cadastrado com sucesso$/) do
	click_link('menu_pim_viewEmployeeList')
	fill_in('empsearch_id',:with=>$teste)
	click_button('searchBtn')
	find(:xpath,'//*[@id="resultTable"]/tbody/tr/td[2]/a').click
end