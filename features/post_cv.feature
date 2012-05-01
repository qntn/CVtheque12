Feature: Job seekers post their CVs
  As a job seeker
  In order to found a job
  I want to post my CV on the website

  Scenario: Post a CV
    Given I'm logged in
    When I click on "Choose CV"
    And I click on "Submit"
    Then I should see "CV is uploaded"
