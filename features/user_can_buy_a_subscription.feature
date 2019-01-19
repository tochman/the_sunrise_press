@javascript @stripe
Feature: User can buy a subscription

    As a user
    In order to get access to the best articles
    I would like to be able to buy a subscription

    Background:
        Given the following user exists
            | name | email          | password | password_confirmation | role   |
            | Bill | bill@email.com | password | password              | member |

        And the following article exists:
            | title      | description    | content               | user_id | category_id | published |
            | News title | This is a news | I like to eat cheese! | Bill    | Weather     | true      |

    Scenario: Member can buy a subscription from landing page
        Given I am logged in as 'bill@email.com'
        And I click on 'Become a subscriber'
        And I fill in the payment form
        And I submit the payment form
        Then I should see 'Thank you for subscribing The Sunrise Press, the maker of news while making news'

    Scenario: Member can buy a subscription from article page
        Given I am logged in as 'bill@email.com'
        And I click on 'News title'
        And I click on 'Subscribe'
        And I fill in the payment form
        And I submit the payment form
        Then I should see 'Thank you for subscribing The Sunrise Press, the maker of news while making news'
        # And I should see 'I like to eat cheese!'
        
    Scenario: Visitors can buy a subscription from landing page
        Given I visit the landing page
        And I click on 'Become a subscriber'
        And I should see 'Register'
        And I fill in 'Email' field with 'new@mail.com'
        And I fill in 'Password' field with 'password'
        And I fill in 'Password confirmation' field with 'password'
        And I click on 'Sign up'
        And I click on 'Become a subscriber'
        And I fill in the payment form
        And I submit the payment form
        Then I should see 'Thank you for subscribing The Sunrise Press, the maker of news while making news'
    
    Scenario: Visitor can buy a subscription from article page
        Given I visit the landing page
        And I click on 'News title'
        And I click on 'Subscribe'
        And I should see 'Register'
        And I fill in 'Email' field with 'new@mail.com'
        And I fill in 'Password' field with 'password'
        And I fill in 'Password confirmation' field with 'password'
        And I click on 'Sign up'
        And I click on 'Become a subscriber'
        And I fill in the payment form
        And I submit the payment form
        Then I should see 'Thank you for subscribing The Sunrise Press, the maker of news while making news'

