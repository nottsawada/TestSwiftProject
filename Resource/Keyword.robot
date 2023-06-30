*** Settings ***
Library    Browser
Resource    ./Variables.robot
Resource    ./Repository.robot

*** Keywords ***
Set Up Browser And Open Website
    Open Browser   ${website}    ${browser}
Verify Website
    ${Url}    Get Url           
    Should Be Equal As Strings    ${url}    ${website} 
Select Radio button 
    [Arguments]    ${radio_button}
    Wait For Elements State    ${radio_button}
    Check Checkbox    ${radio_button}
    Sleep    2s
Input Text For Dynamic Dropdown 
    [Arguments]    ${text}    
    Fill Text    ${txtbox_dynamic}     ${text} 
    Click    ${autocomplt_st}    
Select Drop Down List    
    ${selected} =    Select Options By    ${dropdrow_list}  label    API

Check Box Option
    Check Checkbox    ${checkbox_1} 
    Should Contain   ${checkbox_1}    checkBoxOption1
    Check Checkbox    ${checkbox_3}  
    # Wait For Elements State    ${checkbox_1}
    # FOR    ${checkbox}    IN    @{check_ex}
    #     Check Checkbox    ${checkbox_1} 
    #     Check Checkbox    ${checkbox_3}  
    # END
    # Sleep    2s
Hover Mouse
    Hover    ${btn_hover} 