Feature: Visitor can change language
    As a user
    In order to be able to read articles in my native language,
    I would like to switch between languages English and Swedish

    Background:
        And I visit the landing page

    Scenario: Visitor can see categories on index page
        Then I should see 'Register'
        And I should see 'Login'
        
    Scenario: Visitor can see categories in swedish language
        Given I click on 'Svenska'
        Then I should see 'Registrera'
        And I should see 'logga in'