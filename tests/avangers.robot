# robot -d ./logs ./tests/avangers.robot
# robot -d ./logs -i delete_Thor ./tests/avangers.robot

*** Settings ***

Resource                                    ../resources/basic.robot  

Test Setup                                  Open Session
Test Teardown                               Close Session

*** Test Cases ***

Delete All Avanger
    [Tags]                                   deleteAvanger

    Open AvangersPage
    Open List Avangers 
    Delete Firts Avenger
    Validate Avenger Removed                 Capitão América
    Delete Firts Avenger
    Validate Avenger Removed                 Thor
    Delete Firts Avenger
    Validate Avenger Removed                 Homem de Ferro
    Delete Firts Avenger
    Validate Avenger Removed                 Hulk
    Delete Firts Avenger
    Validate Avenger Removed                 Homem Aranha

Delete Capitao America
    [Tags]                                   delete_CapitaoAmerica
    
    Open AvangersPage
    Open List Avangers 
    Delete Firts Avenger
    Validate Avenger Removed                 Capitão América
   
Delete Thor
    [Tags]                                   delete_Thor
    
    Open AvangersPage
    Open List Avangers 
    Delete Second Avenger
    Validate Avenger Removed                 Thor
   
Delete Homem de Ferro
    [Tags]                                   delete_HomemFerro
    
    Open AvangersPage
    Open List Avangers 
    Delete Third Avenger
    Validate Avenger Removed                 Homem de Ferro
   
Delete Hulk
    [Tags]                                   delete_Hulk
    
    Open AvangersPage
    Open List Avangers 
    Delete Fourth Avenger
    Validate Avenger Removed                 Hulk
   
Delete Homem Aranha
    [Tags]                                   delete_HomemAranha
    
    Open AvangersPage
    Open List Avangers 
    Delete Fifth Avenger
    Validate Avenger Removed                 Homem Aranha
   