Feature: Visiting Google
  As a user
  I want to use Google
  In order to find information

  @smoke
  Scenario: Visit homepage
    Given I visit the Google homepage
    Then I should see something Googley
