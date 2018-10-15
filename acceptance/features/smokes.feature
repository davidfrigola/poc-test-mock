Feature: Smoke tests
@smoke
Scenario: I want to check list is working in app1
  Given the application1 is up
  When I get the list from application1
  Then request succeeds
@smoke
Scenario: I want to check list is working in app2
  Given the application2 is up
  When I get the list from application2
  Then request succeeds
