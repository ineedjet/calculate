Feature: Basic functionality of a calculator

  Scenario: I can see button on the root page
  	When I navigate to the root page
  	Then I should see 'Calculate' button


  Scenario: I can calculate equation
  	Given I navigate to the root page
  	And I should not see '4'
    When I enter '2+2' into the input field
    And I click 'Calculate' button
    Then I should see '4'
  