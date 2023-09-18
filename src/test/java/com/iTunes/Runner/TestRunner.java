package com.iTunes.Runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
    
@CucumberOptions(  
				 features = {"features"}, 
				 glue = {"com.iTunes.stepdef"},
				 plugin = { "pretty", "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:" },
				 tags= "@LookupAPIFeature"			 
				) 


public class TestRunner extends AbstractTestNGCucumberTests {
    
}
