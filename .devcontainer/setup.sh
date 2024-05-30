#!/bin/bash

PROJECT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"

# configure Git to recognize the current project directory as a safe directory
git config --global --add safe.directory "${PROJECT_ROOT}"

# need npm build artifacts for vscode linting
cd "${PROJECT_ROOT}/frontend"
npm install

# need poetry build artifacts for vscode linting
cd "${PROJECT_ROOT}/backend"
poetry config virtualenvs.in-project true
poetry install