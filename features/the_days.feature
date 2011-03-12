Feature: The days
  As a user
  In order to know whether today is a special day
  I want to check it on isittheday.com

  Scenario Outline: Is it the day of Christmas?
    Given the day of Christmas is set to <a_day>
    When I go to Christmas's the_day page
    Then I should see "Is it the day of Christmas?"
    And I should see "<yes_or_no>"

  Scenarios:
    | a_day     | yes_or_no |
    | today     | Yes       |
    | yesterday | No        |