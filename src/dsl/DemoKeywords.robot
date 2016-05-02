*** Settings ***

Library  CalculatorLibrary

*** Variables ***

${C}  C

*** Keywords ***
Push button
  [Arguments]  ${button}
    Do Something    ${button}  ${C}


Push buttons
  [Arguments]  ${buttons}
    Do Something    ${buttons}