Feature: Validate that the site comes up without a 500 HTTP errors

  Scenario:  Check that the home page comes up without a 500
    When I visit "/"
    Then I should not get a "500" HTTP response
    And I should get a "200" HTTP response
    And I should see the heading "Umami Food Magazine" in the "Footer" region

  Scenario:  Check that the Article menu link navigates to the correct page
    When I visit "/"
    And I click "Articles"
    Then I should see the heading "Articles" in the "Page Title" region

  Scenario:  Check that the Recipes menu link navigates to the correct page
    When I visit "/"
    And I click "Recipes"
    Then I should see the heading "Recipes" in the "Page Title" region
