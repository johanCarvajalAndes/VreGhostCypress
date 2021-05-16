Feature: Shared board connection
 @user1 @web
Scenario: Given: Estando loggeado exitosamente en la aplicación. WHEN: Actualizo la zona horaria a un nuevo valor THEN: La nueva zona horaria se mantiene con el nuevo valor.          
  Given mark scenarion "escenario1"
  Given I navigate to page "<URI>"
  When I enter "<USER1>" into input field having id "ember8"
  When I enter "<PASSWORD1>" into input field having id "ember10"
  When I click on element having id "ember12"
  When I go to de General option
  When Expand time zone option
  When I select option with value "America/Chicago" for dropdown with id "activeTimezone"
  When Click on general save button
  Then I refresh page
  Then I go to de General option
  Then Expand time zone option    
  Then I compare values in select input "America/Chicago"
  Then I select option with value "Europe/Amsterdam" for dropdown with id "activeTimezone"
  Then Click on general save button

@user2 @web
Scenario: Given: Estando loggeado exitosamente en la aplicación. WHEN: Actualizo Social Account con un valor de URL incorrecto THEN: Aparece una alerta que advierte el error.
  Given mark scenarion "escenario2"
  Given I navigate to page "<URI>"
  When I enter "<USER1>" into input field having id "ember8"
  When I enter "<PASSWORD1>" into input field having id "ember10"
  When I click on element having id "ember12"  
  Then I wait for 5 seconds 
  When I go to de General option
  When Expand time social Account
  Then I set incorrect value in Social accounts input and screen show alert

@user3 @web
Scenario: Given: Estando loggeado exitosamente en la aplicación. WHEN: Actualizo el titulo del site con un valor correcto. THEN: El valor ingresado como titulo se mantiene con el nuevo valor
  Given mark scenarion "escenario3"
  Given I navigate to page "<URI>"
  When I enter "<USER1>" into input field having id "ember8"
  When I enter "<PASSWORD1>" into input field having id "ember10"
  When I click on element having id "ember12"
  Then I wait for 5 seconds 
  When I go to de General option
  When Expand title button
  When Change title in general option
  When Click on general save button
  Then I refresh page
  Then I wait for 5 seconds 
  Then Expand title button
  Then Validate title 

@user4 @web
Scenario: Given: Given: Estando loggeado exitosamente en la aplicación. WHEN: Actualizo el Lenguaje del site con un valor correcto. THEN: El valor ingresado como lenguaje se mantiene con el nuevo valor
  Given mark scenarion "escenario4"
  Given I navigate to page "<URI>"
  When I enter "<USER1>" into input field having id "ember8"
  When I enter "<PASSWORD1>" into input field having id "ember10"
  When I click on element having id "ember12"
  Then I wait for 5 seconds 
  When I go to de General option    
  When Expand Language button
  When Change Language in general option
  When Click on general save button    
  Then I refresh page
  Then I wait for 5 seconds 
  When Expand Language button    
  Then Validate Languaje

  @user5 @web
  Scenario: Given: Estando loggeado exitosamente en la aplicación. WHEN: Actualizo la informacion de site metadata info con un valor correcto. THEN: El valor ingresado en titulo y descripcion se mantiene con los  nuevos valores.
    Given mark scenarion "escenario5"                          
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I wait for 5 seconds 
    When I go to de General option
    When Expand metadata button
    When Change metadata title in general option  
    When Click on general save button  
    Then I refresh page  
    Then I wait for 5 seconds 
    When Expand metadata button
    Then Validate metadata