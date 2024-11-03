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
Feature: Amazon Search Product

  @tag1
  Scenario: Search Redmi 12 mobile
    Given Browser is opened
    When Navigate to "https://amazon.in"
    And Enter product "Redmi note 5G"
    Then I validate the "Redmi note 5G" is displayed

  @tag2
  Scenario Outline: Search multiple mobiles
    Given Browser is opened
    When Navigate to "https://amazon.in"
    And Enter product "<Product>"
    Then I validate the "<Product>" is displayed

    Examples: 
      | Product    |
      | laptop hp  |
      | book       |
      | Electonics |
