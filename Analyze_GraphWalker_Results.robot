*** Settings ***

Library    OperatingSystem
Library    String

*** Test Cases ***

This step retrieves the contents of the Graphwalker log file and adds it to the Robot Framework Results File.
    Get Log Contents

This step analyzes the contents of the Graphwalker log file and displays the output of the v_MemberLoginOverviewHomePage Test.
    [Tags]    Analyze the Member Login Overview HomePage Test Result
    Analyze v_MemberLoginOverviewHomePage

This step analyzes the contents of the Graphwalker log file and displays the output of the v_ErrorPage Test.
    [Tags]    Analyze the Error Page Test Result
    Analyze v_ErrorPage

This step analyzes the contents of the Graphwalker log file and displays the output of the v_WebsiteHomePage Test.
    [Tags]    Analyze the Website Home Page Test Result
    Analyze v_WebsiteHomePage


*** Keywords ***

Get Log Contents
    ${CONTENTS}    Get File    graphwalker_analysis.txt
    Set Suite Variable     ${CONTENTS}

Analyze v_MemberLoginOverviewHomePage
    Should Not Contain    ${CONTENTS}    Failure: v_MemberLoginOverviewHomePage failed

Analyze v_ErrorPage
    Should Not Contain    ${CONTENTS}    Failure: v_ErrorPage failed

Analyze v_WebsiteHomePage
    Should Not Contain    ${CONTENTS}    Failure: v_WebsiteHomePage failed