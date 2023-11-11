#!/usr/bin/env bash

coverage run -m pytest src/tests/test_main.py
coverage report -m