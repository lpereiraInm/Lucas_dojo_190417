#language: pt
#utf-8

Funcionalidade:Manusear_Usuario
Eu como novo cliente
Quero logar no sistema
para criar um usuario

@criar
Cenario:Criar Usuario
Dado Clicar nos menu 'PIM' , submenu 'Add employee'
Quando Criar o usuario
Entao Usuario criado

@editar
Cenario:Editar Usuario
Dado Clicar nos menu 'PIM' , submenu 'Employee List'
Quando Editar o usuario
Entao Usuario editado