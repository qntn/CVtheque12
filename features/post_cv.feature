Feature: Job seekers post their CVs
  As a job seeker
  In order to found a job
  I want to post my CV on the website

  @javascript
  Scenario: Post a CV to found a job
    Given I'm on my settings form
    When I attach file test.pdf by clicking on Choisir un CV
    And I click on "Envoyer CV"
    Then I should see "Le CV a été téléchargé"
