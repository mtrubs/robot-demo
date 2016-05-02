*** Settings ***
Documentation     This is some demo text
Resource          DemoKeywords.robot
Library           CalculatorLibrary  WITH NAME  cl

*** Variables ***
${var1}  12345
${var2}  another variable

*** Test Cases ***
Addition
  [Tags]  Calculator
    Given calculator has been cleared
    When user types "1 + 1"
    And user pushes equals
    Then result is "2"

Subtraction
  [Tags]  Calculator
    Given calculator has been cleared
    When user types "2 - 1"
    And user pushes equals
    Then result is "1"

#Multiplication
#  [Tags]  Calculator
#    Given calculator has been cleared
#    When user types "2 * 2"
#    And user pushes equals
#    TODO: implement me

*** Keywords ***
Calculator has been cleared
    Push button    ${C}
    Log  ${True}

User types "${expression}"
    Push buttons    ${expression}  ${var1}  ${var2}

User pushes equals
    Push button    =

Result is "${result}"
    Result should be    ${result}
    cl.Result should be    ${result}