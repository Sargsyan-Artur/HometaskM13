@all
Feature: KinoBase

  Background:
    Given I navigate to "https://kinobase-92871.firebaseapp.com/#/"

  Scenario Outline: Check navigating to <Page Name> after clicking on <locator>
    When I click on element "<locator>"
    And I wait for 3 seconds
    Then I expect page url to contain "<Page Name>"

    Examples:
      | Page Name  | locator                                   |
      | search     | .navbar-nav .headerNavLink:nth-of-type(1) |
      | collection | .navbar-nav .headerNavLink:nth-of-type(2) |
      | about      | .navbar-nav .headerNavLink:nth-of-type(3) |

  Scenario: Check Page Title
    When I wait for 3 seconds
    Then I expect page title to be equal "KinoBase"

  Scenario: Check colletions is displayed after navigating to collection page
    When I click on element ".navbar-nav .headerNavLink:nth-of-type(2)"
    Then I expect text on element ".container h1" should be equal "Watch Collections Online"

