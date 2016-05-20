*** Settings ***
          # resolves
Library   Selenium2Library  WITH NAME  s2l1
          # resolves
Library   Selenium2Library  WITH NAME  s2l2
          # does not resolve
Library   Libs.Selenium2Library    WITH NAME  ls2l

*** Test Cases ***
Test Direct 1
    # resolves
    s2l1.set selenium speed   1

Test Direct 2
    # resolves
    s2l2.set selenium speed   1

Test Lib
    # does not resolve
    ls2l.set selenium speed   1