Feature: Get Courses
    As a developer interested in educational organizations
    I want to be able to retrieve information about courses for an organization

    Scenario: List courses by org id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request courses for an organization with id 506b8b1f780aa79602388b42
        * I should get a page of 50 items

    Scenario: List courses by org
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * When I request courses for that org
        * I should get a page of 50 items

    Scenario: List courses by org id and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request courses for an org with id 506b8b1f780aa79602388b42 and a school with id 506bc86b0e130a4b4b91921e
        * I should get a page of 50 items

    Scenario: List courses by school
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a school with id 506bc86b0e130a4b4b91921e for that org
        * When I request courses for that school
        * I should get a page of 50 items

    Scenario: Course by school and course id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a school with id 506bc86b0e130a4b4b91921e for that org
        * When I request a course with id 506bc8630e130a4b4b919135 for that school
        * I should get a course with id 506bc8630e130a4b4b919135

    Scenario: Course by org id and course id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request a course with id 506bc8630e130a4b4b919135 for an org with id 506b8b1f780aa79602388b42
        * I should get a course with id 506bc8630e130a4b4b919135

    Scenario: Course by org and course id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * When I request a course with id 506bc8630e130a4b4b919135 for that org
        * I should get a course with id 506bc8630e130a4b4b919135

    Scenario: School for course
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a course with id 506bc8630e130a4b4b919135 for that org
        * I request the school for that course
        * I should get a school with id 506bc86b0e130a4b4b91921e

