Feature: Get Schools
    As a developer interested in educational organizations
    I want to be able to retrieve information about schools for an organization

    Scenario: List schools by org id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request schools for an organization with id 506b8b1f780aa79602388b42
        * I should get a page of 1 items

    Scenario: List schools by org
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * When I request schools for that org
        * I should get a page of 1 items

    Scenario: School by org id and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request a school with id 506bc86b0e130a4b4b91921e for an org with id 506b8b1f780aa79602388b42
        * I should get a school with id 506bc86b0e130a4b4b91921e

    Scenario: School by org and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * When I request a school with id 506bc86b0e130a4b4b91921e for that org
        * I should get a school with id 506bc86b0e130a4b4b91921e
