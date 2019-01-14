Feature: Visitor can read a specific article

    As a visitor
    In order to read an article
    I would like to be able to click on an article and have it displayed

    Background:
        Given the following article exists:
            | title   | description         | content                      | journalist |
            | News    | This is a news      | I like to eat cheese!        | Jon        |
            | Article | This is an  article | I do not like to eat cheese! | Greg       |
        And I visit the landing page
        And I click 'Read' within 'News'

    Scenario: Visitor can see specific article
        And I should see 'News'
        And I should see 'I like to eat cheese!'
        And I should see 'Jon'

    Scenario: Visitor can navigate back to the landing page
        Then I click 'The Sunrise Press'
        And I should see 'News'
        And I should see 'This is an article'