*** Settings ***
Documentation    Automated Test Suite for QA Challenge
Resource         ../resources/main.robot
Test Teardown    Close All Browsers

*** Test Cases ***
Test 1: Validate File Upload
    [Documentation]    Automates file upload and validates success message.
    [Tags]             upload
    Open Upload Page
    Perform File Upload
    Validate Upload Success

Test 2: Validate File Download
    [Documentation]    Automates file download and verifies it locally.
    [Tags]             download
    Open Download Page
    Download File
    Validate Downloaded File    some-file.txt

Test 3: Validate JSON Comparison
    [Documentation]    Reads and compares two JSON files.
    [Tags]             json
    Compare JSON Files    ${DATA_DIR}/json1.json    ${DATA_DIR}/json2.json