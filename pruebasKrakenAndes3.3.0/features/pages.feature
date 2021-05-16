Feature: Shared board connection

  @user1 @web
  Scenario: Escenario No.1 probar el borrador de una pagina 
    Given mark scenarion "escenario6"
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "<PAGES>"
    Then I wait for 6 seconds 
    And I click on new page
    And I write a new title "Test de prueba"
    Then I navigate to page "<PAGES>"
    Then I expect to see the title of my publication "Test de prueba"

  @user2 @web
  Scenario: Escenario No.2 probar la publicación de una pagina 
    Given mark scenarion "escenario7"
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "<PAGES>"
    Then I wait for 6 seconds 
    And I click on new page
    And I write a new title "Test de prueba"
    Then I publish my page

  @user3 @web
  Scenario: Escenario No.3 eliminar una pagina
    Given mark scenarion "escenario8"
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "<PAGES>"
    Then I wait for 6 seconds 
    And I click on new page
    And I write a new title "Test de prueba"
    And I publish my page
    Then I delete my page

  @user4 @web
  Scenario: Escenario No.4 verificar el autor de una pagina
    Given mark scenarion "escenario9"
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "<PAGES>"
    Then I wait for 6 seconds 
    When I click on new page
    And I write a new title "Test de prueba"
    And I publish my page
    And I go back to pages
    Then I confirm the user "<GHOSTNICKNAME>"

  @user5 @web
  Scenario: Escenario No.5 verificar la existencia url de una pagina
    Given mark scenarion "escenario10"
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "<PAGES>"
    Then I wait for 6 seconds 
    When I click on new page
    And I write a new title "Test de prueba"
    And I publish my page
    Then I navigate to page "<PAGES>"