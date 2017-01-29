Feature: Log Out

  rails-auth-roles allows logged in users to log out

  @javascript
  Scenario: A Logged In User Can Log Out
    Given I have logged in
    Then I should be able to log out
