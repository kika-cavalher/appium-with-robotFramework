*** Settings ***
Resource                       ../basic.robot   


*** Variables ***

#RadioButton
${text_buttonspage}             BOTÕES

#Simple
${menu_btnSilmple}              CLIQUE SIMPLES
${title_btnSilmple}             Botão clique simples
${toaster_btnSilmple}           xpath=//android.widget.Toast[@text="Isso é um clique simples"]

#Long
${menu_btnLong}                 CLIQUE LONGO
${title_btnLong}                Botão clique longo
${btn_success_btnLong}          CLIQUE LONGO OK

