Feature: Visitor can see articles in categories

    As a visitor
    In order to read about the topics which interest me the most
    I would like to see news sorted in categories

    Background:
        Given the following category exists:
            | name    | id |
            | Sport   | 1  |
            | Weather | 2  |
        Given the following article exists:
            | title   | description         | content                      | journalist | category_id |
            | News    | This is a news      | I like to eat cheese!        | Jon        | 1           |
            | Article | This is an article  | I do not like to eat cheese! | Greg       | 2           |
        And I visit the landing page

    Scenario: Visitor can see based on categories
        When I click 'Weather'
        Then I should see 'Article'
        And I should see 'This is an article'
        And I should not see 'News'
        And I should not see 'This is a news'