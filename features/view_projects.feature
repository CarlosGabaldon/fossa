Feature: View projects
  Scenario: View a list projects for a selected user
    Given there is a user
    And the user has the project "Elephant voting rights"
    When they vist the project list page
    Then they should see the project "Elephant voting rights"
  
  
