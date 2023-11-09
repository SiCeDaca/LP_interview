Feature: Testing Search API for Cola Products

  Background: Calling endpoint
    Given he calls endpoint "https://waarkoop-server.herokuapp.com/api/v1/search/demo/cola"

  Scenario: Verify the status code is 200 for the Cola search
    Then he sees the response status code is 200

  Scenario: Verify the response contains specific Cola products
    Then he sees the results displayed for "Coca-cola Original taste"
    And he sees the results displayed for "g'woon Cola"
    And he sees the results displayed for "Pepsi Cola max"
    And he sees the results displayed for "Coca-Cola Blik"
    And he sees the results displayed for "Cola regular"
    And he sees the results displayed for "First Choice Cola regular"
    And he sees the results displayed for "AA Drink High energy"
    And he sees the results displayed for "Coca-cola Zero sugar"
    And he sees the results displayed for "Coca-cola zero sugar 4*1.5L"
    And he sees the results displayed for "Raak Kindercola"
    And he sees the results displayed for "Cola zero"
    And he sees the results displayed for "First Choice cola regular"
    And he sees the results displayed for "Highway Cola"
    And he sees the results displayed for "Coca-Cola Zero"

  Scenario: Verify the response does not contain certain products
    Then he does not see the results displayed for "Pepsi Cola"
    And he does not see the results displayed for "Dr. Pepper"