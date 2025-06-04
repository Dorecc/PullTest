*** Settings ***
Library    SeleniumLibrary
 
*** Variables ***
${URL}            https://RPACHALLENGE.com
${PHONE_NUMBER}   1234567890
${LAST_NAME}      Kiełbasa
${ROLE}           Król Polski
${ADDRESS}        Zamek
${COMPANY_NAME}   Polska
${EMAIL}          król@polska.pl
${FIRST_NAME}     Antoni
 
*** Test Cases ***
Open Website And Fill Form
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//input[@ng-reflect-name='labelPhone']
    Input Text    xpath=//input[@ng-reflect-name='labelPhone']    ${PHONE_NUMBER}
    Input Text    xpath=//input[@ng-reflect-name='labelLastName']    ${LAST_NAME}
    Input Text    xpath=//input[@ng-reflect-name='labelRole']    ${ROLE}
    Input Text    xpath=//input[@ng-reflect-name='labelAddress']    ${ADDRESS}
    Input Text    xpath=//input[@ng-reflect-name='labelCompanyName']    ${COMPANY_NAME}
    Input Text    xpath=//input[@ng-reflect-name='labelEmail']    ${EMAIL}
    Input Text    xpath=//input[@ng-reflect-name='labelFirstName']    ${FIRST_NAME}
    Sleep    3s
    Click Button    xpath=//input[@type='submit']
    Sleep    5s
    Close Browser

Test Case That Always Fails
    Fail  This is an utter failure
