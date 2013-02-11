Feature: Get Students
    As a developer interested in educational organizations
    I want to be able to retrieve information about students for an organization

    Scenario: List students by org id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request students for an organization with id 506b8b1f780aa79602388b42
        * I should get a page of 50 items

    Scenario: List students by org
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * When I request students for that org
        * I should get a page of 50 items

    Scenario: List students by org id and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request students for an org with id 506b8b1f780aa79602388b42 and a school with id 506bc86b0e130a4b4b91921e
        * I should get a page of 50 items

    Scenario: List students by school
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a school with id 506bc86b0e130a4b4b91921e for that org
        * When I request students for that school
        * I should get a page of 50 items

    Scenario: Student by org id and student id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request a student with id 506bc87d0e130a4b4b919221 for an org with id 506b8b1f780aa79602388b42
        * I should get a student with id 506bc87d0e130a4b4b919221

    Scenario: Student by org and student id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * When I request a student with id 506bc87d0e130a4b4b919221 for that org
        * I should get a student with id 506bc87d0e130a4b4b919221

    Scenario: Student by school and student id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a school with id 506bc86b0e130a4b4b91921e for that org
        * When I request a student with id 506bc87d0e130a4b4b919221 for that school
        * I should get a student with id 506bc87d0e130a4b4b919221
