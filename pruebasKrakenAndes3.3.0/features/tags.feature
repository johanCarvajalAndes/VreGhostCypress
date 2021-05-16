 
Feature: Validation Tags

  @user1 @web
  Scenario: Create Tag
    Given mark scenarion "escenario16"
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "<TAGSNEW>"
    Then I enter "Automatizacion" into input field having id "tag-name"
    Then I enter "Automatizacion" into input field having id "tag-slug"
    Then I click on element "/html/body/div[2]/div/main/section/form/header/section/button/span"
    Then I navigate to page "<TAGS>"
  
  @user2 @web
  Scenario: Validate Tag in Post
    Given mark scenarion "escenario17"
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "<POST>"
    Then I selectItem "/html/body/div[2]/div/main/section/section/ol/li[2]/a[2]/h3"
    Then I click on element "/html/body/div[2]/div/main/section/header/section/button"
    Then I click on element having id "tag-input"
    Then I click on element "/html/body/div[4]/div/div/div/div/div/div/div/div[1]/div[2]/form/div[3]/div/div/div/div[2]/div/ul/li"
    
      
  @user3 @web
  Scenario: Validate Tag in Tag
    Given mark scenarion "escenario18"
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "<WELCOME>"
    Then I click on element "/html/body/div/main/div/article/header/section/a"
    
  @user4 @web
  Scenario: Validate Tag in Web Reader
    Given mark scenarion "escenario19"
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "<WELCOME>"
    Then I click on element "/html/body/div/main/div/article/header/section/a"
    
  @user5 @web
  Scenario: Delete Tag
    Given mark scenarion "escenario20"
    Given I navigate to page "<URI>"
    When I enter "<USER1>" into input field having id "ember8"
    When I enter "<PASSWORD1>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I navigate to page "<TAGS>"
    Then I selectItem "/html/body/div[2]/div/main/section/section/ol/li[2]/a[1]/h3"
    Then I click on element "/html/body/div[2]/div/main/section/button/span"
    Then I click on element "/html/body/div[4]/div/div/div/div/div[2]/section/div[2]/button[2]/span"
