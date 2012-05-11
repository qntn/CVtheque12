Feature: People can show offers list
  As a user
  In order to found a job
  I want to show the offer list

  @javascript
  Scenario: Show offer list on the home page
    Given I'm on the homepage
    Then I should see the offers list