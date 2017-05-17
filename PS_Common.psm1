# -----------------------------------------------------------
# SCRIPT MODULE: PS_Common.psm1
# DESCRIPTION: This script module provides basic functions used in most scripts.xml
#
# HISTORY:
#
#      Version   Date                         Changes
#
#      v0.1      Jan 7, 2016                  Initial Version of Script
#
#------------------------------------------------------------

# Import settings from config file
function GetSettingXml($settingFileDirectory)
{
    $exists = Test-Path $settingFileDirectory\Settings.xml -pathType leaf 
    if(-not $exists)
    {
        Throw "ERROR Settings.xml file is missing" + "$settingFileDirectory\Settings.xml"
    }

    return [xml]$ConfigFile = Get-Content $settingFileDirectory\Settings.xml
}


Export-ModuleMember -function 'Get*'
Export-ModuleMember -function 'Load*'
