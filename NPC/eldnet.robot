*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NAME}     leeminho
${EMAIL}    leeminho@gg.com
${PHONE}    +63912345
${SITE}     https://localhost:7122

*** Test Cases ***
Open Edge
    Open Browser    ${SITE}    browser=edge
    Set Window Size    1600     700

Add Students
# this will replicate the variables above, please make sure to add a primary key in your website
    Click Element    id=dropdown
    Click Element    id=Add Students
    Wait Until Page Contains Element    id=StudName
    Input Text    id=StudName       ${NAME}
    Input Text    id=StudEmail      ${EMAIL}
    Input Text    id=StudPhone      ${PHONE}
    Click Button    id=Save