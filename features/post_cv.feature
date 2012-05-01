Feature: Job seekers post their CVs
  As a job seeker
  In order to found a job
  I want to post my CV on the website

  Scenario: Post a CV for an offer
    Given I'm on the page "/offers/1"
    When I click on "Choose CV"
    And I click on "Submit"
    Then I should see "CV is uploaded"

  Scenario: Post a CV to found a job
    Given I'm on the page "/users/1"
    When I click on "Choose CV"
    And I click on "Submit"
    Then I should see "CV is uploaded"
