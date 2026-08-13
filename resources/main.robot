*** Settings ***
Documentation    Main hub for Robot Framework test suite and dependencies.

Library          SeleniumLibrary
Library          OperatingSystem
Library          Collections
Library          JSONLibrary

Resource         resources/keywords.robot
Resource         resources/locators.resource

*** Variables ***
${URL_BASE}      https://the-internet.herokuapp.com
${DOWNLOAD_DIR}  ${EXECDIR}/downloads
${DATA_DIR}      ${EXECDIR}/data