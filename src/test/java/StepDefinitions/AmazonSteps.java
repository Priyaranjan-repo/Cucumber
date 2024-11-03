package StepDefinitions;

import java.time.Duration;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.edge.EdgeDriver;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class AmazonSteps {

	public static WebDriver driver;

	@Given("Browser is opened")
	public void browser_is_opened() {
		driver = new EdgeDriver();
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(40));
	}

	@When("Navigate to {string}")
	public void navigate_to(String url) {
		driver.get(url);
	}

	@When("Enter product {string}")
	public void enter_product(String product) {

		driver.findElement(By.id("twotabsearchtextbox")).sendKeys(product + Keys.ENTER);
	}

	@Then("I validate the {string} is displayed")
	public void i_validate_the_product_is_displayed(String product) {
		try {
			if (driver.getPageSource().contains(product))
				Assert.assertTrue(true);
			else
				Assert.assertTrue(false);
			Thread.sleep(5000);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			driver.quit();
		}

	}
}
