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
    ${count}=    Get Element Count    xpath://*[@id="sitemegamenu"]/nav/ul/li[*]/a
    ${categoryCount}=     Evaluate   ${count} - 1
    FOR    ${index}    IN RANGE    1    ${categoryCount}    
        Log    ${index}
        ${category}=    Get WebElement    xpath://*[@id="sitemegamenu"]/nav/ul/li[${index}]/a
        Double Click Element    ${category}
        
        
        Sleep    3S
        Page Should Contain    ${category.text}
        
    END
    Close Browser
        