Feature: Basic functionality of a calculator

  Background: I am on the root page
    Given I navigate to the root page


  Scenario: I can see button on the root page
  	Then I should see 'Calculate' button

  Scenario: I can calculate equation
  	Given I should not see '4'
    When I enter '2+2' into the 'equation' input field
    And I click 'Calculate' button
    Then I should see '4'
  
  Scenario: Calculator should be secure
    When I enter 'Rails.configuration' into the 'equation' input field
    And I click 'Calculate' button
    Then I should not see 'Rails::Application::Configuration'

