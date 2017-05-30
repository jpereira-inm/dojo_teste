Dado(/^que eu acesse o Portal como Adm$/) do
  	visit 'http://opensource.demo.orangehrmlive.com/'
  	fill_in('txtUsername',:with=>'Admin')
	fill_in('txtPassword',:with=>'admin')
	click_button('btnLogin')
end

Quando(/^eu editar as informacoes de um empregado$/) do
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
  fill_in('empsearch_id',:with=>$teste)
  click_button('searchBtn')
  find(:xpath,'//*[@id="resultTable"]/tbody/tr/td[2]/a').click
  click_button('btnSave')
  find(:xpath,'//*[@id="frmEmpPersonalDetails"]/fieldset/ol[2]/li[4]/img').click
  find(:xpath,'//*[@id="ui-datepicker-div"]/div/div/select[1]/option[12]').click
  find(:xpath,'//*[@id="ui-datepicker-div"]/div/div/select[2]/option[101]').click
  find(:xpath,'//*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[5]/a').click
  choose('personal_optGender_1')
  find(:xpath,'//*[@id="personal_cmbMarital"]/option[2]').click
  find(:xpath,'//*[@id="personal_cmbNation"]/option[27]').click
  fill_in('personal_DOB',:with=>'1988-12-16')
  click_button('btnSave')
  find(:xpath,'//*[@id="sidenav"]/li[6]/a').click
  click_button('btnSave')
  find(:xpath,'//*[@id="job_job_title"]/option[8]').click
  find(:xpath,'//*[@id="job_emp_status"]/option[4]').click
  find(:xpath,'//*[@id="job_eeo_category"]/option[10]').click
  fill_in('job_joined_date',:with=>'2017-05-25')
  find(:xpath,'//*[@id="job_sub_unit"]/option[4]').click
  find(:xpath,'//*[@id="job_location"]/option[5]').click
  fill_in('job_contract_start_date',:with=>'2017-05-25')
  fill_in('job_contract_end_date',:with=>'2017-12-25')
  click_button('btnSave')
#  fill_in('',:with=>'')
#  find(:xpath,'').click
end

Entao(/^o cadastro sera atualizado com sucesso$/) do
end