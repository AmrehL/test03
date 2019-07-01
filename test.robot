*** Settings ***
Library  Selenium2Library


*** Variables ***
${BROWSER}  chrome
${GOOGLE URL}  http://www.google.com


*** Keywords ***
เข้าไป google
    Open Browser  ${GOOGLE URL}  ${BROWSER}
   

    


*** Test Cases ***
Search
    เข้าไป google