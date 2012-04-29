Feature: View projects
  Scenario: View a list of medium priority projects
    Given the user has the medium priority project "Elephant rights"
    When they vist the project list page
    Then they should see the medium priority project "Elephant rights"
  
  
  Scenario: View a list of high priority projects
    Given the user has the high priority project "Save the yaks"
    When they vist the project list page
    Then they should see the high priority project "Save the yaks"