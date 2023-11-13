*** Settings ***
Resource                       ../basic.robot   


*** Variables ***

#RadioButton
${text_menu_RegisterPage}        FORMS
${btn_Register}                  CADASTRO
${text_RegisterPage}             Bem-vindo, crie sua conta.

#Forms
${formRegister_name}             id=io.qaninja.android.twp:id/etUsername
${formRegister_email}            id=io.qaninja.android.twp:id/etEmail
${formRegister_pass}             id=io.qaninja.android.twp:id/etPassword
${btn_submitRegister}            id=io.qaninja.android.twp:id/btnSubmit
${btn_perfilChoise}              id=io.qaninja.android.twp:id/spinnerJob
${fld_listOptions}               class=android.widget.ListView

${register_success}              Tudo certo, recebemos seus dados!


#Desenvolvedor
${opt_perfilDev}                 Desenvolvedor

#QA
${opt_perfilQA}                  QA

#DevOps
${opt_perfilDevops}              DevOps

#UX
${opt_perfilux}                  UX