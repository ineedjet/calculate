Feature: Registered users need to have their own private calculations 

  Scenario: There is an authorisation form
    Given I navigate to the root page
    When I click on the 'Login' link
    Then I should see 'user_email' input field
    And I should see 'user_password' input field