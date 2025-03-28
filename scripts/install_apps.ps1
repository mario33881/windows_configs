# Allow to execute powershell scripts (blocked by default for security reasons)
Set-ExecutionPolicy Bypass -Scope Process -Force

# install scoop
Write-Output "Installing scoop..."
Invoke-RestMethod get.scoop.sh | Invoke-Expression
Write-Output ""

# git is required to use buckets
Write-Output "Installing git..."
scoop install git
Write-Output ""

Write-Output "Adding 'extras' bucket..."
scoop bucket add extras
Write-Output ""

Write-Output "Installing Visual C++ Redistributable 2008 and 2022..."
scoop install extras/vcredist2008 extras/vcredist2022
Write-Output ""

Write-Output "Installing browsers..."
scoop install extras/googlechrome extras/firefox
Write-Output ""

Write-Output "Installing office applications..."
scoop install libreoffice miktex extras/okular
scoop install typst
winget install Microsoft.Teams
Write-Output ""

Write-Output "Installing multimedia software..."
scoop install extras/musikcube extras/vlc
Write-Output ""

Write-Output "Installing utilities..."
scoop install 7zip extras/dangerzone extras/everything extras/everythingtoolbar extras/keepassxc  extras/notepadplusplus extras/sharex
scoop install extras/etcher extras/kdeconnect extras/kdenlive extras/obs-studio extras/pdfarranger
winget install Malwarebytes.Malwarebytes
Write-Output ""

Write-Output "Installing CLI tools..."
scoop install bat clink exiftool fd ffmpeg fzf extras/psfzf less nmap ripgrep sed sudo wget windows-terminal yt-dlp zoxide
Write-Output ""

Write-Output "Installing development tools..."
scoop install act gcc gdb git helix lazygit make miniconda3 nvm vscode yarn
scoop install extras/idea-ultimate extras/pycharm extras/webstorm
Write-Output ""

Write-Output "Installing virtualization tools..."
winget install Docker.DockerDesktop Oracle.VirtualBox
wsl --install --distribution Ubuntu
Write-Output ""

Write-Output "Installing backup tools..."
scoop restic resticprofile
winget install Google.GoogleDrive
Write-Output ""

Write-Output "Done"
