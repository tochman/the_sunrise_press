@javascript @stripe
Feature: User can buy a subscription

    As a user
    In order to get access to the best articles
    I would like to be able to buy a subscription

    Background: 
        Given the following user exists
            | name | email          | password | password_confirmation |
            | Bill | bill@email.com | password | password              |
        And I am logged in as 'bill@email.com'

    Scenario: User can buy a subscription
        Given I click on 'Subscribe'
        And I fill in the paymen form
        And I submit the payment form
        Then I shuld see 'Thank you for subscribing!'