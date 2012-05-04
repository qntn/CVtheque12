Feature: Job seekers post their CVs
  As a job seeker
  In order to found a job
  I want to post my CV on the website

#  Scenario: Post a CV for an offer
#    Given I'm on the page "/offers/1"
#    When I attach file "test.pdf" by clicking on "Choisir un CV"
#    And I click on "Submit"
#    Then I should see "CV is uploaded"
  @javascript
  Scenario: Post a CV to found a job
    Given I'm on the page of a "user"
    When I attach file "test.pdf" by clicking on "Choisir un CV"
    And I click on "Envoyer CV"
    Then I should see "CV is uploaded"
