

Dado ("que estou logado como Admin") do
  visit 'http://opensource.demo.orangehrmlive.com/index.php/auth/login'
  fill_in 'txtUsername',:with=>'Admin'
  fill_in 'txtPassword',:with=>'admin'
  click_button 'btnLogin'
  should have_content 'Admin'
end

Quando("solicito um novo cadastro") do 
  find(:id, 'menu_pim_viewPimModule').click
  find(:id, 'menu_pim_addEmployee').click
end

Quando("preencho os campos necessários") do
  fill_in 'firstName',:with=>'First'
  fill_in 'middleName',:with=>'Middle'
  fill_in 'lastName',:with=>'Last'
  click_button 'btnSave'
end

Então("o novo empregado é cadastrado") do
  #should have_content 'Data Pribadi'
  should have_content 'Personal Details'
  #expect(page).to have_content
end

Quando("Encontro o cadastro a ser editado") do
  find(:id,'menu_pim_viewPimModule').click
  find(:id,'menu_pim_viewEmployeeList').click
  fill_in 'empsearch_id',:with=>'0001'
  click_button 'searchBtn'
  find(:xpath,'//*[@id="resultTable"]/tbody/tr/td[2]/a').click
end

Então("Tenho acesso a tela de edição") do
 find(:xpath, '//*[@id="sidenav"]/li[2]/a').click
 click_button 'btnSave'
 fill_in 'contact_emp_hm_telephone',:with =>'113303-3200'
 click_button 'btnSave'
 should have_content 'Successfully Saved'
end
