Feature: Get Teachers
    As a developer interested in educational organizations
    I want to be able to retrieve information about teachers for an organization

    Scenario: List teachers by org id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request teachers for an organization with id 506b8b1f780aa79602388b42
        * I should get a page of 50 items

    Scenario: List teachers by org
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * When I request teachers for that org
        * I should get a page of 50 items

    Scenario: List teachers by org id and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request teachers for an org with id 506b8b1f780aa79602388b42 and a school with id 506bc86b0e130a4b4b91921e
        * I should get a page of 50 items

    Scenario: List teachers by school
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a school with id 506bc86b0e130a4b4b91921e for that org
        * When I request teachers for that school
        * I should get a page of 50 items

    Scenario: Teacher by school and teacher id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a school with id 506bc86b0e130a4b4b91921e for that org
        * When I request a teacher with id 506bc8b90e130a4b4b919cf7 for that school
        * I should get a teacher with id 506bc8b90e130a4b4b919cf7

    Scenario: Teacher by org id and teacher id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request a teacher with id 506bc8b90e130a4b4b919cf7 for an org with id 506b8b1f780aa79602388b42
        * I should get a teacher with id 506bc8b90e130a4b4b919cf7

    Scenario: Teacher by org and teacher id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * When I request a teacher with id 506bc8b90e130a4b4b919cf7 for that org
        * I should get a teacher with id 506bc8b90e130a4b4b919cf7

    Scenario: School for teacher
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a teacher with id 506bc8b90e130a4b4b919cf7 for that org
        * When I request the school for that teacher
        * I should get a school with id 506bc86b0e130a4b4b91921e
