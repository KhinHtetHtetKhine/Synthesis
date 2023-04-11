*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${Title}  xpath://*[@id="root"]/div[1]/div[1]/div/div[1]
${Correction_tools}  xpath://*[@id="sidebar-content"]/div[2]/div

*** Keywords ***
Reach to the Turnpoint Correction Page
    ${title}  Get Text   ${Title}
    Should be equal  ${title}  Create Product / Turnpoint Correction
View on the right side of the screen
    Element should be present  ${Correction_tools}

*** Test Cases ***
Verify Turnpoint Correction menu is available at the right side of the screen
    Reach to the Turnpoint Correction Page
    View on the right side of the screen

