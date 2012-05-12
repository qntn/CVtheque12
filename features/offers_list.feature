Feature: People can show offers list
  As a user
  In order to found a job
  I want to show the offer list

  Scenario Outline: Show offer list on the home page
    Given There are "25" offers
    When I'm go on the homepage
    Then I should see the offers with title "<title>"
  Examples:
    | title  |
    | offre1 |
    | offre2 |