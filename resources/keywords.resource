*** Settings ***
Resource    ${EXECDIR}/resources/main.resource

*** Keywords ***
Open Upload Page
    Open Browser    ${UPLOAD_URL}    chrome
    Wait Until Element Is Visible    ${LOC_UPLOAD.pageTitle}    timeout=${DEFAULT_TIMEOUT}

Perform File Upload
    [Arguments]    ${uploadFile}
    Set Test Variable    ${uploadFile}
    Choose File    ${LOC_UPLOAD.uploadButton}    ${DATA_DIR}/${uploadFile}
    Click Button    ${LOC_UPLOAD.submitButton}

Validate Upload Success
    Wait Until Element Is Visible    ${LOC_UPLOAD.uploadedSucess}    timeout=${DEFAULT_TIMEOUT}
    ${uploaded_file}    Get Text    ${{$LOC_UPLOAD.fileName.format($uploadFile)}}
    Should Be Equal As Strings    ${uploaded_file}    ${uploadFile}

Open Download Page
    ${prefs}    Create Dictionary
    ...    download.default_directory=${DOWNLOAD_DIR}
    ...    download.prompt_for_download=${FALSE}
    ...    download.directory_upgrade=${TRUE}
    ...    safebrowsing.enabled=${TRUE}

    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_experimental_option    prefs    ${prefs}

    Create WebDriver    Chrome    options=${chrome_options}
    Go To    ${DOWNLOAD_URL}
    Wait Until Element Is Visible    ${LOC_DOWNLOAD.pageTitle}    timeout=${DEFAULT_TIMEOUT}

Download File "${downloadFile}"
    Set Test Variable    ${downloadFile}
    Click Element    ${{$LOC_DOWNLOAD.file_link.format($downloadFile)}}

Validate Downloaded File
    ${file_path}    Set Variable    ${DOWNLOAD_DIR}/${downloadFile}

    FOR    ${i}    IN RANGE    10
        ${exists}    Run Keyword And Return Status    File Should Exist    ${file_path}
        IF  ${exists}  BREAK
        Sleep    1s
    END

    ${fileSize}    Get File Size    ${file_path}

    IF    ${fileSize} > 0
        Log    \nFile downloaded successfully: ${file_path}.     console=True
    ELSE
        Fail    File download failed or file is empty or corrupted: ${file_path}
    END

Compare JSON Files
    [Arguments]    ${json1_path}    ${json2_path}
    ${json1}    Load JSON From File    ${json1_path}
    ${json2}    Load JSON From File    ${json2_path}
    Should Be Equal    ${json1}    ${json2}