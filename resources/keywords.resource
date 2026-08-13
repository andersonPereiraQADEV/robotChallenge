*** Keywords ***
# --- TEST 1: UPLOAD ---
Open Upload Page
    Open Browser    ${URL_BASE}/upload    chrome

Perform File Upload
    Choose File    ${LOC_UPLOAD.input}    ${EXECDIR}/sample.csv
    Click Button    ${LOC_UPLOAD.submit}

Validate Upload Success
    Page Should Contain    File Uploaded!
    Page Should Contain Element    ${LOC_UPLOAD.success_msg}

# --- TEST 2: DOWNLOAD ---
Open Download Page
    Open Browser    ${URL_BASE}/download    chrome

Download File
    Click Element    ${LOC_DOWNLOAD.file_link}
    Sleep    2s

Validate Downloaded File
    [Arguments]    ${file_name}
    ${file_path}=    Set Variable    ${DOWNLOAD_DIR}/${file_name}
    File Should Exist    ${file_path}
    File Should Not Be Empty    ${file_path}

# --- TEST 3: JSON ---
Compare JSON Files
    [Arguments]    ${json1_path}    ${json2_path}
    ${json1}=    Load JSON From File    ${json1_path}
    ${json2}=    Load JSON From File    ${json2_path}
    Should Be Equal    ${json1}    ${json2}