Feature: Visitor can register for an account

    As a Visitor,
    In order to access unique features on the news app,
    I would like to be able to register for an account on the site.

    Background:
        Given the following user exists
        | name | email          | password | password_confirmation |
        | Bill | bill@email.com | password | password              |
        Given I visit the page
        And I click 'Register'

    Scenario: When I fill in the sign up form correctly, I can sign up
        Given I fill in 'Email' field with 'mail@email.com'
        And I fill in 'Password' field with 'password'
        And I fill in 'Password confirmation' field with 'password'
        And I click 'Register'
        Then I should see 'Signed up successfully'