Feature: Publicar un post

  @user1 @web
  Scenario: Escenario 4 verificar generar slug
    Given mark scenarion "escenario14"
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "<POSTPUBLISHET>"
    Then I wait for 5 seconds
    Then I click in path "/html/body/div[2]/div/main/section/section/ol/li[2]/a[2]"
    Then I wait for 5 seconds
    Then I click in path "/html/body/div[2]/div/main/section/header/section/button"
    Then I wait for 5 seconds
    Then I visit to slug route
    