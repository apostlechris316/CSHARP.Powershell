# -----------------------------------------------------------
# SCRIPT: {INSERT_SCRIPT_NAME_HERE}.ps1
# DESCRIPTION: {INSERT_SCRIPT_DESCRIPTION_HERE}
# PRE-REQUISITES: Before running this script ensure:
#
# HISTORY:
#
#      Version   Date                         Changes
#
#      v0.1      May 17, 2017                 Initial Version of Script
#
#------------------------------------------------------------

# -----------------------------------------------------------
#
# RUNNING IN DEBUGGER:
#
# To run in the debugger you MUST do the following:
#
# 1) You must run Powershell ISE as Administrator
# 2) You must run "cd c:\_rwc" in the console first
# 3) You must run "Set-ExecutionPolicy RemoteSigned" in the console first
#
# -----------------------------------------------------------

# --------------------------------------------------------------------
# Determine the directory this script is running from (This is useful when paths are relative to where the script is being run)
$myDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Write-Output("myDir=" + $myDir) 
# --------------------------------------------------------------------

Import-Module $myDir\PS_Common.psm1

# --------------------------------------------------------------------
# Get the powershell version and revision (This is useful if script needs to run on different versions of PowerShell)
$psMajorVersion = $PSVersionTable.PSVersion.Major.ToString()
$psMajorRevision = $PSVersionTable.PSVersion.MajorRevision.ToString()
$psMinorVersion = $PSVersionTable.PSVersion.Minor.ToString()
$psMinorRevision = $PSVersionTable.PSVersion.Minor.ToString()
Write-Output("PowerShell Version: " + $psMajorVersion + ":" + $psMajorRevision + ":" + $psMinorVersion + ":" + $psMinorRevision)
# --------------------------------------------------------------------

[xml]$ConfigFile = GetSettingXml $myDir

# This is the path where the CSHARP.Text.dll and any related assemblies are located
$assemblyPath = $ConfigFile.Settings.AssemblySettings.AssemblyFilePath

# Load Assembly to assist with console apps
Import-Module $myDir\PS_DotCore_Common.psm1

[xml]$ConfigFile = GetSettingXml $myDir

# This is the path where the CSHARP.Text.dll and any related assemblies are located
$assemblyPath = $ConfigFile.Settings.AssemblySettings.AssemblyFilePath

# Load Assembly to assist with console apps
Import-Module $myDir\PS_DotCore_Common.psm1

# BEGIN CUSTOM SCRIPT LOGIC

# END CUSTOM SCRIPT LOGIC

Write-Error("********** Script Executed Successfully ************")

