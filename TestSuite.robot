*** Settings ***
Library    Browser
Resource    ./Resource/Variables.robot 
Resource    ./Resource/Keyword.robot
Resource    ./Resource/Repository.robot

*** Test Cases ***
Open Website And Check Element
    Set Up Browser And Open Website 
    Verify Website  
    Select Radio button     ${rdo_but2}
    Input Text For Dynamic Dropdown    thai    
    Select Drop Down List 
    Check Box Option 
    Hover Mouse
    Sleep    5s
