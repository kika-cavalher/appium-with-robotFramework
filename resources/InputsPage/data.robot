*** Settings ***
Resource                       ../basic.robot   


*** Variables ***
${text_login}                Fala QA, vamos testar o login?
${open_login}                LOGIN
${form_email}                id=io.qaninja.android.twp:id/etEmail
${form_pass}                 id=io.qaninja.android.twp:id/etPassword
${btn_enter}                 io.qaninja.android.twp:id/btnSubmit
${login_success}             Show! Suas credenciais são validas.