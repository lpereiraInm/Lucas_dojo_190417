Dado(/^Clicar nos menu 'PIM' , submenu 'Add employee'$/) do
  visit("http://opensource.demo.orangehrmlive.com/")
  fill_in("txtPassword", :with => "admin")  
  fill_in("txtUsername", :with => "Admin")
  click_button("btnLogin")
  sleep 10
  click_link("menu_pim_viewPimModule")
  click_link("menu_pim_addEmployee")
end

Quando(/^Criar o usuario$/) do
  fill_in("firstName", :with => "Lucas")
  fill_in("middleName", :with => "Alves")
  fill_in("lastName", :with => "Pereira")
  click_button("btnSave")
end

Entao(/^Usuario criado$/) do
  assert_text("Personal Details")
end