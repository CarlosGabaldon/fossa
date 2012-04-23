Feature: View tasks
  Scenario: View list of tasks for selected feature
    Given there is a user
    And has selected a project
    And has selected a feature
    And has selected a iteration
    When they vist the task list page
    Then they should see their list of tasks for their selected featue.
  
