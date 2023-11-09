Feature: Testing Search API for Apple Products

  Background: Calling endpoint
    Given he calls endpoint "https://waarkoop-server.herokuapp.com/api/v1/search/demo/apple"

  Scenario: Verify the status code is 200 for the Apple search
    Then he sees the response status code is 200

  Scenario: Verify the response contains specific Apple products
    Then he sees the results displayed for "Apple Bandit Cider Juicy Apple Fles 6 x 30 cl"
    And he sees the results displayed for "Jack Daniel's Whiskey Apple 700 ml"
    And he sees the results displayed for "Apple Bandit Cider Raspberry Fles 6 x 30 cl"
    And he sees the results displayed for "CRYSTAL CLEAR APPEL&PEER 1,5 LITER"
    And he sees the results displayed for "Spa TOUCH Niet Bruisend Raspberry - Apple 50cl"
    And he sees the results displayed for "I'm Juice Pineapple Melon Mango 500 ml"
    And he sees the results displayed for "Fernandes Super Pineapple Sparkling Lemonade 1,5 L"
    And he sees the results displayed for "Organix Rijstwafels Apple Rice Cake Clouds 40 g"
    And he sees the results displayed for "Apple Bandit Juicy Apple 0.0 Cider Fles 6 x 30 cl"

  Scenario: Verify the response does not contain certain products
    Then he does not see the results displayed for "Peaches"
    And he does not see the results displayed for "Bananas"
    And he does not see the results displayed for "Oranges"
