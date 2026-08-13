# QA Automation Challenge

Project built with Robot Framework and SeleniumLibrary for automated testing.

## Project Structure

    robotchallenge/
    ├── main.robot
    ├── pyproject.toml
    ├── tests/
    │   └── challenge_tests.robot
    ├── resources/
    │   ├── keywords.robot
    │   └── locators.resource
    ├── sample.csv
    ├── json1.json
    ├── json2.json
    └── downloads/

## Tests Included

1. File Upload: Tests uploading sample.csv and checks the success message and file name on the page.
2. File Download: Triggers a file download, checks if the file exists locally, and verifies it is not empty.
3. JSON Comparison: Reads two JSON files and compares their keys and values.

## How to Run

1. Install dependencies:
   uv sync

2. Run tests:
   uv run robot -d results tests/challenge_tests.robot