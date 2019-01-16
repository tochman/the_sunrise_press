Feature: Visitor can read a specific article

    As a visitor
    In order to read an article
    I would like to be able to click on an article and have it displayed

    Background:
        Given the following user exists
            | name | email          | password | password_confirmation | role       |
            | Bill | bill@email.com | password | password              | journalist |
        And the following article exists:
            | title   | description        | content                      | user_id | category_id | published |
            | News    | This is a news     | I like to eat cheese!        | Bill    | Weather     | true      |
            | Article | This is an article | I do not like to eat cheese! | Bill    | Sport       | true      |
        And I visit the landing page
        And I click on 'News'

    Scenario: Visitor can see specific article
        And I should see 'News'
        And I should see 'I like to eat cheese!'
        And I should see 'Bill'