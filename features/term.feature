Feature: Get Terms
    As a developer interested in educational organizations
    I want to be able to retrieve information about terms for an organization

    Scenario: List terms by org id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request terms for an organization with id 506b8b1f780aa79602388b42
        * I should get a page of 41 items

    Scenario: List terms by org
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * When I request terms for that org
        * I should get a page of 41 items

    Scenario: List terms by org id and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request terms for an org with id 506b8b1f780aa79602388b42 and a school with id 506bc86b0e130a4b4b91921e
        * I should get a page of 41 items

    Scenario: List terms by school
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a school with id 506bc86b0e130a4b4b91921e for that org
        * When I request terms for that school
        * I should get a page of 41 items

    Scenario: Term by school and term id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a school with id 506bc86b0e130a4b4b91921e for that org
        * When I request a term with id 506bc8af0e130a4b4b919c6b for that school
        * I should get a term with id 506bc8af0e130a4b4b919c6b

    Scenario: Term by org id and term id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request a term with id 506bc8af0e130a4b4b919c6b for an org with id 506b8b1f780aa79602388b42
        * I should get a term with id 506bc8af0e130a4b4b919c6b

    Scenario: Term by org and term id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * When I request a term with id 506bc8af0e130a4b4b919c6b for that org
        * I should get a term with id 506bc8af0e130a4b4b919c6b

    Scenario: Current term by school
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a school with id 506bc86b0e130a4b4b91921e for that org
        * When I request the current term for that school
        * I should get the current term

    Scenario: Current term by org id and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request the current term for an org with id 506b8b1f780aa79602388b42 and a school with id 506bc86b0e130a4b4b91921e
        * I should get the current term

    Scenario: Sections for term
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 506b8b1f780aa79602388b42
        * I request a term with id 506bc8af0e130a4b4b919c6b for that org
        * When I request the sections for that term
        * I should get a list of 163 sections
