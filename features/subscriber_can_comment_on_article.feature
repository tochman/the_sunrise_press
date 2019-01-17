Feature: Subscriber can comment on article

    As a Subscriber
    In order to voice my opinion or ask questions
    I would like to be able to leave a comment on an article

    Background:
        Given the following user exists
            | name | email          | password | role   |
            | Bill | bill@email.com | password | member |

        And the following article exists:
            | title   | description        | content                      | user_id | category_id | published |
            | News    | This is a news     | I like to eat cheese!        | Bill    | Weather     | true      |

        And I visit the landing page
        And I am logged in as ' bill@email.com'
        And I click on 'News'

    Scenario: Successfully submit a comment
        And I fill in 'Body' with 'This is my comment'
        And I click on 'Create Comment'
        Then I should see 'Bill'
        And I should see 'This is my comment'