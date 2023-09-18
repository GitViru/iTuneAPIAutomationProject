package com.iTunes.stepdef;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import io.restassured.response.Response;
import java.util.Map;
    
public class SearchApiStepDef {

	Response response = null;

	@Given("Query iTunes SearchAPI with single or multiple API parameters")
	public void querySearchAPI(DataTable queryParams) {
		Map<String, String> params = queryParams.asMap();
		response = given()
					.queryParams(params)
					.get("https://itunes.apple.com/search");

	}
	
	@Then("validate SearchAPI response for {string} {string}")
	public void validateSearchApiResponse(String jsonPath, String value) {
		// This method is targeted to cover the assertion checks to be performed for SearchAPI's response,
		// and should be extended to perform validation logic for SearchAPI 
		response
		.then()
		.body(jsonPath, equalTo(Integer.parseInt(value)))
		.log().all();
	}
}

