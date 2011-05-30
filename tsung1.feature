Feature: Go to devops.fr
  
  Scenario: Access the home page

    When I got to "http://devops.fr/"
    Then the page should load correctly
    And the page should load in less than 1 second
    And the page should contain the word "devops"




