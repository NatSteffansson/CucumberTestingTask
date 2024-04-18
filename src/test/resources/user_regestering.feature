Feature: Register user on webpage

  Scenario Outline:
    Given I open the browser "<browserName>" with the registration page
    When I fill out the compulsory fields "20/01/1990", "Maria", "<lastName>"
    And I fill out the registration form with compulsory email and confirmed email
    And I fill out the registration form with "<password>" and "<confirmPassword>"
    And I "<click>" the checkbox with terms and conditions
    And I click the checkbox with 18 over and terms of conduct
    And I press the confirm and join button
    Then I should get the outcome "<outcome>"
    Examples:
      | browserName | lastName | password   | confirmPassword | click | outcome                                                                   |
      | Chrome      | Svensson | Password13 | Password13      | true  |                                                                           |
      | Firefox     | Svensson | Password13 | Password13      | true  |                                                                           |
      | Edge        |          | Password13 | Password13      | true  | Last Name is required                                                     |
      | Chrome      | Svensson | Password13 | Password1313    | true  | Password did not match                                                    |
      | Chrome      | Svensson | Password13 | Password13      | false | You must confirm that you have read and accepted our Terms and Conditions |



