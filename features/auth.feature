Feature: Registered users need to have their own private calculations 

  Scenario: There is an authorisation form
    Given I navigate to the root page
    When I click on the 'Login' link
    Then I should see 'user_email' input field
    And I should see 'user_password' input field

@wip
  Scenario: We save history for authorised users
    Given There is a user in the database
    And I login as that user
    When I calculate '2+2'
    And I calculate '3*3'
    Then I should see '4'
    And I should see '9'