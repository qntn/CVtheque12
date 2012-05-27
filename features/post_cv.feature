Feature: Job seekers post their CVs
  As a job seeker
  In order to found a job
  I want to post my CV on the website

  @user
  Scenario: Post a CV to found a job
    Given I'm logged in
    And I'm on my settings form
    When I attach file cv2.pdf by clicking on Choisir un CV
    And I click on "Envoyer CV"
    Then I should see "Le CV a été téléchargé"

  @user
  @offer
  Scenario: Post a CV for a job
    Given I'm logged in
    And I'm on an offer page
    And I already uploaded my CV
    And I should see the offer title
    When I click on "Postuler à cette offre"
    Then I should see "Vous avez postulé à cette offre"
