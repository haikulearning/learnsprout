Feature: Get Orgs
    As a developer interested in educational organizations
    I want to be able to retrieve information about all organizations I have access to

    Scenario: List all orgs
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request orgs
        * I should get a list of 1 orgs

    Scenario: Org by ID
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request an org with id 506b8b1f780aa79602388b42
        * I should get an organization with id 506b8b1f780aa79602388b42
