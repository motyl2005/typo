Feature: Fix bug in Categories
  As a blog administrator
  I want to be able to go to the categories page

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully access Categories
    Given I am on the categories page
    Then I should see "Categories" as header
  