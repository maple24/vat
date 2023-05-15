*** Settings ***
Library    ../library/PuttyHelper.py    WITH NAME    mputty
Library    ../library/GenericHelper.py    WITH NAME    mgeneric
Library    ../library/DBHelper.py    WITH NAME    mdb

*** Keywords ***
HelloWorld
    [Documentation]    helloworld
    Log To Console    helloworld

GetSOCVersion
    [Documentation]    Get SOC version with putty command 'cat buildinfo.txt'
    
    ${RES}    ${MATCHED}    mputty.Wait For Trace    attern=MAIN_VERSION\=(.*)    cmd=cat Buildinfo.txt    timeout=5
    Should Be Equal    ${RES}    ${True}    Unable to get SOC version

    [Return]    ${MATCHED}

GetSCCVersion
    [Documentation]    Get SCC version with putty command 'swup_scc -i 1'

    ${RES}    ${MATCHED}    mputty.Wait For Trace    pattern=SCC FW Version Info: (.*)    cmd=swup_scc -i 1    timeout=5
    Should Be Equal    ${RES}    ${True}    Unable to get SCC version

    [Return]    ${MATCHED}

ResetbyCMD
    [Documentation]    Run powercycle with putty command 'bosch_reset'

    ${RES}    ${MATCHED}    mputty.Wait For Trace    pattern=(LCM Unmount is done successfully)    cmd=bosch_reset    timeout=50
    Should Be Equal    ${RES}    ${True}    Fail to get shutdown trace!

ResetbyCAN
    [Documentation]    Run powercycle with can signals