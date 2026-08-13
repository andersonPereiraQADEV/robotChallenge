*** Settings ***
Documentation    Main hub for Robot Framework test suite and dependencies.

Library          SeleniumLibrary
Library          OperatingSystem
Library          Collections
Library          JSONLibrary

Resource         ${EXECDIR}/resources/keywords.resource
Resource         ${EXECDIR}/resources/locators.resource

*** Variables ***
${DOWNLOAD_URL}    https://the-internet.herokuapp.com/download
${UPLOAD_URL}      https://the-internet.herokuapp.com/upload
${DATA_DIR}      ${EXECDIR}\\data
${DOWNLOAD_DIR}  ${DATA_DIR}\\downloads
${uploadFile}    ${EMPTY}
${downloadFile}  ${EMPTY}
${DEFAULT_TIMEOUT}    25s