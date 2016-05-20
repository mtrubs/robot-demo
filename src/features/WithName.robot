*** Settings ***
Library           Demo  WITH NAME  d1               # points to class
Library           Demo  WITH NAME  d2               # points to class
Library           demo  WITH NAME  d3               # not resolved
Library           test.demo.demo  WITH NAME  ldd1   # not resolved
Library           test.demo.Demo  WITH NAME  ldd2   # not resolved
Library           test.Demo.demo  WITH NAME  ldd3   # not resolved
Library           test.Demo.Demo  WITH NAME  ldd4   # points to class
Library           Test.demo.demo  WITH NAME  ldd5   # not resolved
Library           Test.demo.Demo  WITH NAME  ldd6   # not resolved
Library           Test.Demo.demo  WITH NAME  ldd7   # not resolved
Library           Test.Demo.Demo  WITH NAME  ldd8   # not resolved
Library           test.demo  WITH NAME  ld1         # not resolved
Library           test.Demo  WITH NAME  ld2         # points to file
Library           Test.demo  WITH NAME  ld3         # not resolved
Library           Test.Demo  WITH NAME  ld4         # not resolved

*** Keywords ***

something
    demo result1        # class import
    d1.demo result1     # class import
    d2.demo result1     # class import
    d3.demo result1     # not resolved
    d4.demo result1     # d3 does not exist so it should not resolve
    ldd1.demo result1   # import not resolved
    ldd2.demo result1   # import not resolved
    ldd3.demo result1   # import not resolved
    ldd4.demo result1   # class import
    ldd5.demo result1   # import not resolved
    ldd6.demo result1   # import not resolved
    ldd7.demo result1   # import not resolved
    ldd8.demo result1   # import not resolved
    ld1.demo result1    # import not resolved
    ld2.demo result1    # file import
    ld3.demo result1    # import not resolved
    ld4.demo result1    # import not resolved
