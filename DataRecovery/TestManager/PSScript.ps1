     Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    $Objs = @()
    $RegKey = @("HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*","HKLM:\SOFTWARE\\Wow6432node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\*") 
    
    $InstalledAppsInfos = Get-ItemProperty -Path $RegKey 

    $InstalledAppsInfos | select DisplayName, Version, InstallDate,Publisher | ConvertTo-Json
