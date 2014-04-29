Feature: ServerInfo Data
  As a user
  I want to see server specific information
  In order to determine what version of the code is running

  @smoke
  Scenario: Visit manifest and get all properties
    Given I access the manifest url
    Then I should see many manifest properties

  @smoke
  Scenario: Visit manifest and get Build-Tag property
    Given I access the manifest url with optional "Build-Tag" property
    Then I should see only the "Build-Tag" manifest property and not the "Manifest-Version" property