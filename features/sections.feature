Feature: Get Sections
    As a developer interested in educational organizations
    I want to be able to retrieve information about sections for an organization

    Scenario: List sections by org id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request sections for an organization with id 506b8b1f780aa79602388b42
        * I should get a page of 50 items

    Scenario: List sections by org
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * When I request sections for that org
        * I should get a page of 50 items

    Scenario: List sections by org id and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request sections for an org with id 506b8b1f780aa79602388b42 and a school with id 506bc86b0e130a4b4b91921e
        * I should get a page of 50 items

    Scenario: List sections by school
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a school with id 506bc86b0e130a4b4b91921e for that org
        * When I request sections for that school
        * I should get a page of 50 items

    Scenario: List next page of sections
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request sections for an org with id 506b8b1f780aa79602388b42 and a school with id 506bc86b0e130a4b4b91921e
        * When I request the next page
        * I should get a page of 50 items

    Scenario: Section by school and section id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a school with id 506bc86b0e130a4b4b91921e for that org
        * When I request a section with id 506bc89f0e130a4b4b919516 for that school
        * I should get a section with id 506bc89f0e130a4b4b919516

    Scenario: Section by org id and section id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request a section with id 506bc89f0e130a4b4b919516 for an org with id 506b8b1f780aa79602388b42
        * I should get a section with id 506bc89f0e130a4b4b919516

    Scenario: Section by org and section id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * When I request a section with id 506bc89f0e130a4b4b919516 for that org
        * I should get a section with id 506bc89f0e130a4b4b919516

    Scenario: Term for section
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a section with id 506bc89f0e130a4b4b919516 for that org
        * When I request the term for that section
        * I should get a term with id 506bc8af0e130a4b4b919c9f

    Scenario: Teacher for section
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a section with id 506bc89f0e130a4b4b919516 for that org
        * When I request the teacher for that section
        * I should get a teacher with id 506bc8b90e130a4b4b919d0a

    Scenario: School for section
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a section with id 506bc89f0e130a4b4b919516 for that org
        * When I request the school for that section
        * I should get a school with id 506bc86b0e130a4b4b91921e

    Scenario: Course for section
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a section with id 506bc89f0e130a4b4b919516 for that org
        * When I request the course for that section
        * I should get a course with id 506bc8630e130a4b4b919179

    Scenario: Students for section
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a section with id 506bc89f0e130a4b4b919516 for that org
        * When I request the students for that section
        * I should get a list of 7 students
