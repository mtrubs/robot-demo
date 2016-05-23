*** Settings ***
Library     Dummy  WITH NAME  d1               # points to class
Library     Dummy  WITH NAME  d2               # points to class
Library     dummy  WITH NAME  d3               # not resolved
Library     test.dummy.dummy  WITH NAME  ldd1   # not resolved
Library     test.dummy.Dummy  WITH NAME  ldd2   # not resolved
Library     test.Dummy.dummy  WITH NAME  ldd3   # not resolved
Library     test.Dummy.Dummy  WITH NAME  ldd4   # points to class
Library     Test.dummy.dummy  WITH NAME  ldd5   # not resolved
Library     Test.dummy.Dummy  WITH NAME  ldd6   # not resolved
Library     Test.Dummy.dummy  WITH NAME  ldd7   # not resolved
Library     Test.Dummy.Dummy  WITH NAME  ldd8   # not resolved
Library     test.dummy  WITH NAME  ld1         # not resolved
Library     test.Dummy  WITH NAME  ld2         # points to file
Library     Test.dummy  WITH NAME  ld3         # not resolved
Library     Test.Dummy  WITH NAME  ld4         # not resolved

*** Keywords ***

something
    dummy        # class import
    d1.dummy     # class import
    d2.dummy     # class import
    d3.dummy     # not resolved
    d4.dummy     # d3 does not exist so it should not resolve
    ldd1.dummy   # import not resolved
    ldd2.dummy   # import not resolved
    ldd3.dummy   # import not resolved
    ldd4.dummy   # class import
    ldd5.dummy   # import not resolved
    ldd6.dummy   # import not resolved
    ldd7.dummy   # import not resolved
    ldd8.dummy   # import not resolved
    ld1.dummy    # import not resolved
    ld2.dummy    # file import
    ld3.dummy    # import not resolved
    ld4.dummy    # import not resolved
