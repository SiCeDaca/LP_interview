Feature: Testing Search API for Pasta Products

  Background: Calling endpoint
    Given he calls endpoint "https://waarkoop-server.herokuapp.com/api/v1/search/demo/pasta"

  Scenario: Verify the status code is 200 for the Pasta search
    Then he sees the response status code is 200

  Scenario: Verify the response contains specific Pasta products
    Then he sees the results displayed for "La Molisana Cannelloni n° 312"
    And he sees the results displayed for "Knorr Mix ovenpasta ham kaas"
    And he sees the results displayed for "Grand'Italia Tortellini formaggi"
    And he sees the results displayed for "La Molisana Orzo n° 65"
    And he sees the results displayed for "Grand'Italia pipe rigate"
    And he sees the results displayed for "Bio+ Tagliatelle"
    And he sees the results displayed for "La Molisana Penne Rigate n° 20"
    And he sees the results displayed for "Grand'Italia Tagliatelle"
    And he sees the results displayed for "Grand'Italia Pasta macaroni tradizionale"
    And he sees the results displayed for "Grand'Italia Tortellini ai formaggi"
    And he sees the results displayed for "Unox Good pasta spag.bolog"
    And he sees the results displayed for "PLUS penne rigate"
    And he sees the results displayed for "Unox Good pasta mushroom"
    And he sees the results displayed for "La Molisana Linguine n° 6"
    And he sees the results displayed for "g'woon macaroni"
    And he sees the results displayed for "La Molisana Penne Integrali n° 20"
    And he sees the results displayed for "Selezione Ristorante Gevulde pasta basilicum"
    And he sees the results displayed for "Grand'Italia Tortellini al gusto carne"
    And he sees the results displayed for "Grand'Italia Pasta penne tradizionali"
    And he sees the results displayed for "g'woon mini penne volkoren"

  Scenario: Verify the response does not contain certain products
    Then he does not see the results displayed for "Spaghetti"
    And he does not see the results displayed for "Lasagna"
    And he does not see the results displayed for "Fusilli"
