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
    
  Scenario: Dynamic Content test
    And I click in "Dynamic content"
    And I check the first image and the text are present
    And I refresh the page
    Then I checked that the first image and the first text are different

  Scenario: Dynamic Controls test
    And I click in "Dynamic Controls"
    And I check the checkbox is present
    And I click on the remove button
    And I check the checkbox is not present 
    And I click on the add button
    Then I check the checkbox is present

  Scenario: Dynamic Controls test two
    And I click in "Dynamic Controls"
    And I check the field is disabled
    And I click on the enable button
    And I check the field is enabled
    And I click on the disable button
    Then I check the field is disabled

  Scenario: Horizontal Slider test
    And I click in "Horizontal Slider"
    And I click on the bar
    Then I press the right button of the keyboard until the value indicates five

  Scenario: Sortable Data Tables test
    And I click in "Sortable Data Tables"
    And I check that the last name "Smith" has "http://www.jsmith.com" in the "Web Site" column
    And I check that the last name "Bach" has "$51.00" in the "Due" column
    And I check that the last name "Doe" has "Jason" in the "First Name" column
    Then I check that the last name "Conway" has "tconway@earthlink.net" in the "Email" column