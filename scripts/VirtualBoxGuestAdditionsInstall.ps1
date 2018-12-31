Foreach ($drive in (Get-WMIObject -Class Win32_CDROMDrive)) { 
    if (Test-Path ($drive.Drive + '\VBoxWindowsAdditions.exe')) 
    { 
        $CDROMDrive = $drive.Drive
        break
    } 
}

Write-Output "Import certificates"
Get-ChildItem ($CDROMDrive + '\cert\') *.cer | ForEach-Object { & ($CDROMDrive + '\cert\VBoxCertUtil.exe') add-trusted-publisher $_.FullName --root $_.FullName}

Write-Output "Install Virtualbox Guest Tools"
Start-Process ($CDROMDrive + '\VBoxWindowsAdditions.exe') '/S' -Wait