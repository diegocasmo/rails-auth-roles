Feature: Sign Up

  rails-auth-roles allows users to sign up

  @javascript
  Scenario: User Can Sign Up
    Given I create an unverified account
    Then I should be able to see the confirmation instructions

  @javascript
  Scenario: User Cannot Sign Up With An Invalid Email
    Given I try to create an account with an invalid email
    Then I should not be able to sign up

  @javascript
  Scenario: User Cannot Sign Up With An Invalid Password
    Given I try to create an account with an invalid password
    Then I should not be able to sign up
