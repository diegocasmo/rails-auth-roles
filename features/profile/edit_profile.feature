Feature: Edit Profile

  rails-auth-roles allows users to edit their profile

  @javascript
  Scenario: User Can Edit Password
    Given I have logged in
    Then I should be able to edit my password
