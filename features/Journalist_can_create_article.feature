Feature: Journalist can create article

    As a journalist,
    In order to write articles
    I would like to be able to have an article creation form

    Background: 
        Given the following category exists:
            | name    | id |
            | Sport   | 1  |
            | Weather | 2  |
        And I visit the landing page
        And I click on 'New article'

    Scenario: Journalist can create article
        Given I fill in 'Title' field with 'My article'
        And I fill in 'Description' field with 'This is a description'
        And I fill in 'Content' field with 'This is my article about the sunny weather'
        And I fill in 'Journalist' field with 'Johanna'
        And I select 'Weather' from Category
        And I click on 'Save Article'
        Then I should see 'My article'
        And I should see 'Johanna'
        And I should see 'This is my article about the sunny weather'
    
    Scenario: Journalist fills out New article form unsuccessfully 
        When I click on 'Save Article'
        Then I should see 'Every field needs to be filled in!'