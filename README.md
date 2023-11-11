# test-coverage-on-match

This repo tries to isolate why `coverage.py` is reporting some Python 3.10
`match` statements are not considered as having run. Turn out it's the `branch`
argument.

## Without the `branch` argument

Running `run-tests-without-branch.sh`, we get full coverage:

```bash
└ ❯ ./run-tests-without-branch.sh
========================================= test session starts =========================================
platform darwin -- Python 3.10.13, pytest-7.4.3, pluggy-1.3.0
rootdir: /Users/derek/work/test-coverage-on-match
collected 3 items

src/tests/test_main.py ...                                                                      [100%]

========================================== 3 passed in 0.01s ==========================================
Name                                     Stmts   Miss  Cover   Missing
----------------------------------------------------------------------
src/test_coverage_on_match/__init__.py       9      0   100%
src/tests/__init__.py                        0      0   100%
src/tests/test_main.py                       6      0   100%
----------------------------------------------------------------------
TOTAL                                       15      0   100%
```

## With the `branch` argument

Running `run-tests-with-branch.sh`, we do not full coverage; the last `case`
statement is measured as not having been hit:


```bash
└ ❯ ./run-tests-with-branch.sh
========================================= test session starts =========================================
platform darwin -- Python 3.10.13, pytest-7.4.3, pluggy-1.3.0
rootdir: /Users/derek/work/test-coverage-on-match
collected 3 items

src/tests/test_main.py ...                                                                      [100%]

========================================== 3 passed in 0.01s ==========================================
Name                                     Stmts   Miss Branch BrPart  Cover   Missing
------------------------------------------------------------------------------------
src/test_coverage_on_match/__init__.py       9      0      6      1    93%   10->exit
src/tests/__init__.py                        0      0      0      0   100%
src/tests/test_main.py                       6      0      0      0   100%
------------------------------------------------------------------------------------
TOTAL                                       15      0      6      1    95%
```