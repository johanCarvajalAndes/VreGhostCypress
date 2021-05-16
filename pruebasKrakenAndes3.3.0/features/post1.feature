Feature: Crear un post como borrador

  @user1 @web
  Scenario: Escenario 1 crear un post como borrador con título
    Given mark scenarion "escenario11"
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "<EDITORPOST>"
    Then I wait for 5 seconds
    Then I click in path "/html/body/div[2]/div/main/section/div[1]/div[1]/textarea"
    Then I write text "Eltitulo875" in path "/html/body/div[2]/div/main/section/div[1]/div[1]/textarea"
    Then I click in path "/html/body/div[2]/div/main/section/div[1]/div[1]/article/div[1]/div"
    Then I wait for 5 seconds
    Then I navigate to page "<POST>"
    Then I wait for 5 seconds 
  
 