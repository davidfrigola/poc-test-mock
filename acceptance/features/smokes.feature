Feature: Smoke tests
@smoke
Scenario: I want to check list is working
  Given the application1 is up
  When I get the list
  Then request succeeds
