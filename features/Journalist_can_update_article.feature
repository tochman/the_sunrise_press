Feature: Journalist can create article

    As a Journalist,
    In order to change articles I have already written
    I would like to be able to edit articles

    Background:
        Given the following user exists
            | name | email          | password | password_confirmation | role       |
            | Bill | bill@email.com | password | password              | journalist |
        And the following article exists:
            | title   | description        | content                      | user_id | category_id |
            | News    | This is a news     | I like to eat cheese!        | Bill    | Weather     |
            | Article | This is an article | I do not like to eat cheese! | Bill    | Sport       |
        And I am logged in as 'bill@email.com'
        And I click on 'News'
        And I click on 'Edit'

    Scenario: Journalist can update article
        Given I fill in 'Title' field with 'My article'
        And I fill in 'Description' field with 'This is a description'
        And I fill in 'Content' field with 'This is my article about the sunny weather'
        And I select 'Weather' from 'Category'
        And I click on 'Save Article'
        Then I should see 'My article'
        And I should see 'Bill'
        And I should see 'This is my article about the sunny weather'