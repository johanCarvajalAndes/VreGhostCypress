Feature: Publicar un post

  @user1 @web
  Scenario: Escenario 3 publicar un post y verificarlo en la página
    Given mark scenarion "escenario13"
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "<POST>"
    Then I wait for 5 seconds
    Then I click in path "/html/body/div[2]/div/main/section/section/ol/li[2]/a[2]/h3"
    Then I wait for 5 seconds
    Then I click in path "/html/body/div[2]/div/main/section/header/section/div/div[1]"
    Then I wait for 5 seconds
    Then I click in path "/html/body/div[1]/div/footer/button[2]"
    Then I wait for 5 seconds
    Then I navigate to page "<PAGINAFRONT>"
    