Feature: Registered users need to have their own private calculations 

  @wip
  Scenario: There is an authorisation form
    Given I navigate to the root page
    When I click on the 'Login' link
    Then I should see 'login' input field
    And I should see 'password' input field