Feature: View project features
  Scenario: View list of features for a project
    Given the user has selected the "Giraffes for Congress" project
    And the "Giraffes for Congress" project has features
    When they vist the feature list page
    Then they should see the following features:
      | Fundraising |
      | Campaigning |


  
  