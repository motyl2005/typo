Feature: Merge Articles
  As a blog administrator
  In order to avoid duplication of article contents
  I want to be able to merge two existing articles

  Background:
    Given the blog is set up
    And the following articles exist 
        | user      | title    | body   |
        | admin     | title1   | body1  |
        | demouser  | title2   | body2  |
    
  Scenario Outline: Hide or show merge button
    Given I am logged in as "<login>"
    Given I am on the edit page for article "<title>"
    Then I should <action>
  
  Examples: 
    | login    | title  | action                     |
    | admin    | title1 | see "Merge Article"        |
    | demouser | title2 | not see "Merge Article"    |
    
  Scenario: Merge two articles
    Given I am logged in as "admin"
    And I merge article "title1" with article "title2"
    Then I should be on the admin content page
    And I should see "title1"
    And I should not see "title2"
    And Article "title1" should have content from both articles
    
