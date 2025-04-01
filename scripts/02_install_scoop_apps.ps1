Write-Output "Installing Visual C++ Redistributable 2008 and 2022..."
scoop install extras/vcredist2008 extras/vcredist2022
Write-Output ""

Write-Output "Installing browsers..."
scoop install extras/googlechrome extras/firefox
Write-Output ""

Write-Output "Installing office applications..."
scoop install libreoffice miktex extras/okular
scoop install typst
Write-Output ""

Write-Output "Installing multimedia software..."
scoop install extras/musikcube extras/vlc
Write-Output ""

Write-Output "Installing utilities..."
scoop install 7zip extras/dangerzone extras/everything extras/everythingtoolbar extras/keepassxc extras/notepadplusplus extras/sharex
scoop install extras/etcher extras/kdeconnect extras/kdenlive extras/obs-studio extras/pdfarranger
Write-Output ""

Write-Output "Installing CLI tools..."
scoop install bat clink exiftool fd ffmpeg fzf extras/psfzf gnupg less nmap ripgrep sed sudo wget windows-terminal yt-dlp zoxide
scoop install nerd-fonts/JetBrains-Mono
Write-Output ""

Write-Output "Installing development tools..."
scoop install act gcc gdb git helix lazygit make miniconda3 nvm vscode yarn
scoop install extras/idea-ultimate extras/pycharm extras/webstorm
Write-Output ""

Write-Output "Installing backup tools..."
scoop install restic resticprofile
Write-Output ""

Write-Output "Done"
