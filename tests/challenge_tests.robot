*** Settings ***
Documentation    Automated Test Suite for QA Challenge
Resource         ../resources/main.resource
Test Teardown    Close All Browsers

*** Test Cases ***
Test 1: Validate File Upload
    [Documentation]    Automates file upload and validates success message.
    [Tags]             upload
    Open Upload Page
    Perform File Upload    testfile.csv
    Validate Upload Success

Test 2: Validate File Download
    [Documentation]    Automates file download and verifies it locally.
    [Tags]             download
    Open Download Page
    Download File "playwright-hard-test.txt"
    Validate Downloaded File

Test 3: Validate JSON Comparison
    [Documentation]    Reads and compares two JSON files.
    [Tags]             json
    Compare JSON Files    ${DATA_DIR}/json1.json    ${DATA_DIR}/json2.json