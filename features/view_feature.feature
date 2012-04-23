Feature: View features
  Scenario: View list of features for a selected project
    Given there is a user
    And has selected a project
    When they vist the feature list page
    Then they should see their list of features for their selected project.
  
  
