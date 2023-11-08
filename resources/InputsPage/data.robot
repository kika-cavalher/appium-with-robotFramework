*** Settings ***
Resource                       ../basic.robot   


*** Variables ***

#RadioButton
${text_radioBtn}                BOTÕES DE RADIO
${title_radioBtn}               Escolha sua linguagem preferida

${fld_radioBtn_java}            xpath=//android.widget.RadioButton[@resource-id="io.qaninja.android.twp:id/radioButton" and @text="Java "]
${fld_radioBtn_c#}              xpath=//android.widget.RadioButton[@resource-id="io.qaninja.android.twp:id/radioButton" and @text="C# "]
${fld_radioBtn_ruby}            xpath=//android.widget.RadioButton[@resource-id="io.qaninja.android.twp:id/radioButton" and @text="Ruby "]
${fld_radioBtn_python}          xpath=//android.widget.RadioButton[@resource-id="io.qaninja.android.twp:id/radioButton" and @text="Python "]
${fld_radioBtn_javascript}      xpath=//android.widget.RadioButton[@resource-id="io.qaninja.android.twp:id/radioButton" and @text="Javascript "]
${fld_radioBtn_elixir}          xpath=//android.widget.RadioButton[@resource-id="io.qaninja.android.twp:id/radioButton" and @text="Elixir "]
${fld_radioBtn_lang}            xpath=//android.widget.RadioButton[@resource-id="io.qaninja.android.twp:id/radioButton" and @text="Go Lang "]


#CheckBox

${text_checkBox}                CHECKBOX
${title_checkBox}               Marque as techs que usam Appium
${fld_checkBox_container}       id=io.qaninja.android.twp:id/rvContainer

${fld_checkBox_ruby}            xpath=//android.widget.CheckBox[@resource-id="io.qaninja.android.twp:id/checkboxButton" and @text="Ruby "]
${fld_checkBox_python}          xpath=//android.widget.CheckBox[@resource-id="io.qaninja.android.twp:id/checkboxButton" and @text="Python "]
${fld_checkBox_java}            xpath=//android.widget.CheckBox[@resource-id="io.qaninja.android.twp:id/checkboxButton" and @text="Java "]
${fld_checkBox_javascript}      xpath=//android.widget.CheckBox[@resource-id="io.qaninja.android.twp:id/checkboxButton" and @text="Javascript "]
${fld_checkBox_cobol}           xpath=//android.widget.CheckBox[@resource-id="io.qaninja.android.twp:id/checkboxButton" and @text="Cobol "]
${fld_checkBox_c#}              xpath=//android.widget.CheckBox[@resource-id="io.qaninja.android.twp:id/checkboxButton" and @text="C# "]
${fld_checkBox_robotFram}       xpath=//android.widget.CheckBox[@resource-id="io.qaninja.android.twp:id/checkboxButton" and @text="Robot Framework "]
