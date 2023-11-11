#!/usr/bin/env bash

rm pyproject.toml
rm -rf .coverage
coverage run -m pytest src/tests/test_main.py
coverage report -m