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

Function f{
    $DirPath = "C:\Users\magicPro\.config\vifm\lastdir"
    if (Test-Path($DirPath)){
        rm $DirPath
    }
    vifm
    if (Test-Path("C:\Users\magicPro\.config\vifm\lastdir")){
        cat $DirPath | change.exe | cd
    }
}

Set-Alias -Name e -Value nvim
Set-Alias -Name c -Value cls
