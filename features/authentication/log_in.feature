Feature: Log In

  rails-auth-roles allows users to log in

  @javascript
  Scenario: User Can Log In With Valid Credentials
    Given I create and verify an account
    Then I should be able to log in

  @javascript
  Scenario: User Cannot Log In If Not Registered
    Given I have not created an account
    Then I should not be able to log in

  @javascript
  Scenario: User Cannot Log In If Account Hasn't Been Confirmed
    Given I create an unverified account
    Then I should not be able to log in
