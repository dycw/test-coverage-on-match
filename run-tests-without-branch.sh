#!/usr/bin/env bash

rm pyproject.toml > /dev/null 2>&1
rm -rf .coverage > /dev/null 2>&1
coverage run -m pytest src/tests/test_main.py
coverage report -m