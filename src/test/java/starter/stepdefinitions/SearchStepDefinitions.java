package starter.stepdefinitions;

import io.cucumber.java.en.Then;
import net.serenitybdd.rest.SerenityRest;
import io.restassured.response.Response;

import java.util.List;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.And;

import static net.serenitybdd.rest.SerenityRest.then;
import static org.assertj.core.api.Assertions.assertThat;

public class SearchStepDefinitions {

        private Response response;

        @Given("he calls endpoint {string}")
        public void heCallsEndpoint(String endpoint) {
            response = SerenityRest.when().get(endpoint);
        }

        @Then("he sees the response status code is {int}")
        public void heSeesTheResponseStatusCodeIs(int expectedStatusCode) {
            then().statusCode(expectedStatusCode);
        }

        @Then("he sees the results displayed for {string}")
        public void heSeesTheResultsDisplayedFor(String item) {
            response.then().statusCode(200); // Check the status code if needed
            List<String> titles = response.jsonPath().getList("title");
            assertThat(titles).contains(item);
        }

        @And("he does not see the results displayed for {string}")
        public void heDoesNotSeeTheResultsDisplayedFor(String item) {
            response.then().statusCode(200); // Check the status code if needed
            List<String> titles = response.jsonPath().getList("title");
            assertThat(titles).doesNotContain(item);
        }
    }
