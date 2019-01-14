Feature: Journalist can create article

    As a Journalist,
    In order to change articles I have already written
    I would like to be able to edit articles

    Background:
        Given the following user exists
            | email          | password | password_confirmation | role       |
            | bill@email.com | password | password              | journalist |

        And the following category exists:
            | name    | id |
            | Sport   | 1  |
            | Weather | 2  |
        And the following article exists:
            | title   | description        | content                      | journalist | category_id |
            | News    | This is a news     | I like to eat cheese!        | Jon        | 1           |
            | Article | This is an article | I do not like to eat cheese! | Greg       | 2           |
        And I am logged in as 'bill@email.com'
        And I click on 'News'
        And I click on 'Update article' within 'News'

    Scenario: Journalist can update article
        Given I fill in 'Title' field with 'My article'
        And I fill in 'Description' field with 'This is a description'
        And I fill in 'Content' field with 'This is my article about the sunny weather'
        And I fill in 'Journalist' field with 'Johanna'
        And I select 'Weather' from 'Category'
        And I click on 'Update Article'
        Then I should see 'My article'
        And I should see 'Johanna'
        And I should see 'This is my article about the sunny weather'