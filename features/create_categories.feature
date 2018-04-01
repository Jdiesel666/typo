Feature: Create or Edit Category
  As an admin
  I want to categorize my blogs
  
  Background: login as a admin
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully create a new category
    Given I am on the categories page
    When I fill in "category_name" with "category1"
    And I fill in "category_keywords" with "test1"
    And I fill in "category_permalink" with "general1"
    And I fill in "category_description" with "testCreate"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "category1"
    And I should see "test1"
    And I should see "general1"
    And I should see "testCreate"