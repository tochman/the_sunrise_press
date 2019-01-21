Feature: Editor can grant journalist access to write articles

    As an editor
    In order to have up to date local news 
    I would like to be able to allow journalists to write articles


    Background:
        Given the following user exists
            | name | email          | password | password_confirmation | role       |
            | Bill | bill@email.com | password | password              | member     |
            | Jon  | jon@email.com  | password | password              | editor     |

    Scenario: Editor can grant member to be a journalist 
        Given I am logged in as 'jon@email.com'
        And I click on 'Users'
        And I click on 'Set as Journalist'
        Then I should see 'Updated Successfully!'


   

        