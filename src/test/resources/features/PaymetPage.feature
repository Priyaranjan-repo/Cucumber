#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Login functioanality


Scenario: filpkart login.
Given browser should opened
When Navigate to "https://filpkart.com"
And enter mobile number 
And click on continue button
Then browser should sucessfully opened 


  @tag2
  Scenario Outline: filpkart login data
    Given I want to write a step with <name>
    When I check for the <value> in step
    Then I verify the <status> in step

    Examples: 
      | URL  | MobileNo. | status  |
      |  |     5 | success |
      | name2 |     7 | Fail    |
