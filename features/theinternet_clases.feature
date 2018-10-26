Feature: The internet herokuapp test

  Background:
    Given I go to the-internet.herokuapp

  Scenario: Checkboxes test
    And I click in "Checkboxes"
    And I distil the second item
    Then I check that the items are distilled

  Scenario: Dropdowns test
    And I click in "Dropdown"
    And I click in selector
    And I click in opcion 2
    Then I check that items are distilled

  Scenario: Hover test
    And I click in "Hovers"
    And I hovers on the user3
    Then I checked to see the user and the profile link