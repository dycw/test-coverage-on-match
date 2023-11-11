#!/usr/bin/env bash

cat << EOF > pyproject.toml
[tool.coverage.run]
branch = true
EOF
rm -rf .coverage
coverage run -m pytest src/tests/test_main.py
coverage report -m