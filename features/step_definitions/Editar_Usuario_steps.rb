Dado(/^Clicar nos menu 'PIM' , submenu 'Employee List'$/) do
  visit("http://opensource.demo.orangehrmlive.com/")
  fill_in("txtPassword", :with => "admin")  
  fill_in("txtUsername", :with => "Admin")
  click_button("btnLogin")
  sleep 10
  click_link("menu_pim_viewPimModule")
  click_link("menu_pim_viewEmployeeList")
end

Quando(/^Editar o usuario$/) do
  sleep 10
  fill_in("empsearch_employee_name_empName", :with => "Jasmine")  
  click_button("searchBtn")
  click_link("Jasmine")
  click_button("Edit")
  choose("personal_optGender_2")
  click_button("btnSave")
end

Entao(/^Usuario editado$/) do
  assert_text("Successfully Saved")
end