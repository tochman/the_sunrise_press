Feature: Visitor can view all listed articles

   As a visitor
   In order to choose an article to read
   I would like to be able to see the articles listed on a page

   Background:
      Given the following user exists
            | name | email          | password | password_confirmation | role       | id |
            | Bill | bill@email.com | password | password              | journalist | 1  |

        And the following category exists:
            | name    | id |
            | Sport   | 1  |
            
        And the following article exists:
            | title   | description        | content                      | user_id | category_id |
            | News    | This is a news     | I like to eat cheese!        | 1       | 1           |

   Scenario: Visitor can see articles on index page
      Given I visit the landing page
      Then I should see 'News'
      Then I should see 'This is a news'