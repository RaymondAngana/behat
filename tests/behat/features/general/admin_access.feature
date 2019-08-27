Feature: Validate that admin functionality is working

  Scenario: Check that the admin user can log into the site
    Given I visit "/user/login"
    When I fill in "Username" with "admin"
    And I fill in "Password" with "drupaladm1n"
    And I press the "Log in" button
    Then I should see the link "Edit"

  Scenario:  Check that a "page not found" warning is logged when I vist a non-existent page
    Given I visit "/user/login"
    And I fill in "Username" with "admin"
    And I fill in "Password" with "drupaladm1n"
    And I press the "Log in" button
    When I am on "/en/recipe"
    And I visit "en/admin/reports/dblog"
    Then I should see "page not found" in the "Admin Content" region

  @api @skip
  Scenario:  Check that /admin/config can be accessed without 500 HTTP error
    Given I am logged in as a user with the "administrator" role
    When I visit "/admin/config"
    Then I should not get a "500" HTTP response
    And I should get a "200" HTTP response
    And I should see the heading "Configuration"
