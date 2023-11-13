*** Settings ***
Resource                       ../basic.robot   


*** Variables ***

#RadioButton
${text_buttonspage}             BOTÕES
${btn_btnClique}                CLIQUE AQUI

#Simple
${menu_btnSilmple}              CLIQUE SIMPLES
${title_btnSilmple}             Botão clique simples
${toaster_btnSilmple}           xpath=//android.widget.Toast[@text="Isso é um clique simples"]
${txt_toaster_btnSilmple}       Isso é um clique simples

#Long
${menu_btnLong}                 CLIQUE LONGO
${title_btnLong}                Botão clique longo
${btn_btnLong}                  id=io.qaninja.android.twp:id/long_click
${btn_success_btnLong}          CLIQUE LONGO OK

