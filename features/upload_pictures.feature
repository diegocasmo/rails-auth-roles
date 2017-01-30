Feature: Upload Picture

  rails-auth-roles allows users to upload a specific number of pictures

  @javascript
  Scenario: User Can Upload A Picture
    Given I have logged in
    Then I should be able to upload a picture
