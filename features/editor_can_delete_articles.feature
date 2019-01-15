Feature: Editor can delete articles

    As an editor,
    In order to remove incorrect or inappropriate articles
    I would like to be able to delete them

    Background:
        Given the following user exists
            | name | email         | password | role   |
            | Jim  | jim@email.com | password | editor |
        And the following article exists:
            | title      | description     | content        | user_id | category_id |
            | It's a win | Local team wins | We didn't lose | Jim     | Sports      |

    Scenario: Editor can delete article
        Given I am logged in as 'jim@email.com'
        And I click on 'It\'s a win'
        Then show me the page
        And I click on 'Delete article'
        Then I should not see 'It\'s a win'