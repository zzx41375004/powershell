Function tnshutdown{
    Stop-Computer
}

Function tnreboot{
    Restart-Computer
}


# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

$DirPath = "C:\Users\magicPro\.config\vifm\lastdir"
Function f{
    if (Test-Path($DirPath)){
        rm $DirPath
    }
    vifm
    if (Test-Path($DirPath)){
        Get-Content $DirPath | C:\\bin\\change.exe | Set-Location
    }
}

Set-Alias -Name e -Value nvim
Set-Alias -Name c -Value cls
