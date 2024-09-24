*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem


*** Variables ***
${pageURL}=    http://jimms.fi
${browser}=    chrome
${browerOption}=    options=add_argument("disable-search-engine-choice-screen");add_experimental_option("detach", True)


*** Test Cases ***

Verify All Product Categories Have Landing Page
    Open Browser    ${pageURL}    ${browser}    ${browerOption}
    Maximize Browser Window
    Sleep    2s
    Close Browser
        