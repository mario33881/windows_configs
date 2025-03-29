# Applications

> NOTE: to install all the applications using powershell scripts:
>
> - Open powershell and execute the `Set-ExecutionPolicy Bypass -Scope Process -Force` command to allow scripts to run
> - use the [01_setup_scoop.ps1](scripts/01_setup_scoop.ps1) script file to install scoop, git and the 'extras' bucket. DO NOT RUN AS ADMIN.
> - use the [02_install_scoop_apps.ps1](scripts/02_install_scoop_apps.ps1) script to install apps using scoop. DO NOT RUN AS ADMIN.
> - use the [03_install_winget_apps.ps1](scripts/03_install_winget_apps.ps1) script to install apps using winget. To avoid UAC, run as administrator.
> - use the [04_install_wsl.ps1](scripts/04_install_wsl.ps1) script to install WSL.

## Package managers

Package managers allow to install, upgrade and uninstall software with ease.

There are 3 main reasons for which I use a package manager:

- fast installation of multiple apps: `winget install <pkg1> <pkg2> ...` / `scoop install <pkg1> <pkg2> ...`
- easy updates: `winget upgrade --all` / `scoop update *`
- low PATH environment variable "pollution": a single path can contain hard links to various executables

I currently use 2 package managers:

- scoop: prefers portable installs, so no admin privileges are required to install software. Plus, portable software tends to leave less files around the file system after uninstalling them.

  Portable software can be put in any folder on any drive and it will (should) work.

- winget: prefers "standard" installers and installation paths, requires admin privileges.

  I use it for:

  - software that is not available in scoop (rare)
  - software that prefers the standard installation method

Winget is included in modern Windows 10 versions and in Windows 11.

Install scoop with:

```powershell
# Allow to execute powershell scripts (blocked by default for security reasons)
Set-ExecutionPolicy Bypass -Scope Process -Force

# install scoop
irm get.scoop.sh | iex
```

### Package manager Maintanance

Once in a while, run the following commands to remove old files:

```powershell
# remove old software versions
scoop cleanup *

# remove old installers, 7z/zip archives, ...
scoop cache rm *
```

## Install software

### Scoop buckets

Buckets are like package repositories, they are the place where scoop can find how to install an app.

```powershell
# git is required to use buckets
scoop install git

scoop bucket add extras
```

### Frequent dependencies

```powershell
scoop install extras/vcredist2008 extras/vcredist2022
```

### Browser

```powershell
scoop install extras/googlechrome extras/firefox 
```

- googlechrome: Google Chrome. Used for development purposes
- firefox: main browser

### Office apps

```powershell
scoop install libreoffice miktex extras/okular
scoop install typst

winget install Microsoft.Teams
```

- libreoffice: allows to create different types of office documents (written documents, spreadsheets, presentations, ...)
- miktex: allows to compile LaTeX documents. LaTeX files contain text and instructions on how to produce the output PDF file.
- okular: PDF reader
- typst: similar to LaTeX. Uses a syntax which is closer to markdown
- Microsoft Teams: video conference app

### Multimedia

```powershell
scoop install extras/musikcube extras/vlc
```

- musikcube: CLI music player
- vlc: video player

### Utility tools

```powershell
scoop install 7zip extras/dangerzone extras/everything extras/everythingtoolbar extras/keepassxc extras/notepadplusplus extras/sharex
scoop install extras/etcher extras/kdeconnect extras/kdenlive extras/obs-studio extras/pdfarranger

winget install Malwarebytes.Malwarebytes
```

- 7-zip: manages file archives
- dangerzone: makes PDF files safe(r) by handling them in docker containers (splits pages, handles raw pixel data, merges them together, OCRs text)
- everything: searches files across the file system. Returns better results than Windows Search, supports various filters.
- everythingtoolbar: search menu (that can be pinned to the applications toolbar) which uses everything to search for files.
- etcher: writes ISO images to USB or SD cards
- kdeconnect: connects the smartphone to the PC
- kdenlive: video editor
- keepassxc: offline password manager
- notepadplusplus: better notepad
- obs-studio: useful to video record an application or the entire desktop
- pdfarranger: useful to merge images and PDF files into one PDF file
- sharex: screenshot tool which allows annotations (numbers, text). Useful to make tutorials.
- malwarebytes: malware scanner

### CLI tools

```powershell
scoop install bat clink exiftool fd ffmpeg fzf extras/psfzf gnupg less nmap ripgrep sed sudo wget windows-terminal yt-dlp zoxide
```

- bat: shows file content with syntax highlighting
- clink: better Windows command prompt UX (commands completion, history, ...)
- exiftool: shows file metadata
- fd: find files/folders, easier than the find command
- ffmpeg: handles audio and video streams
- fzf: interactive fuzzy finder
- psfzf: allows to use fzf in powershell
- gnupg: generates GPG keys. Useful, for example, to sign git commits
- less: allows to scroll long output text (pipe text to it using `<command> | less`)
- nmap: find IPs and open ports of hosts (useful when there is dynamic IP assignment or there are firewall issues)
- ripgrep: searches text in files
- sed: replaces text with other text
- sudo: elevator of privileges. Doesn't require opening another terminal window
- wget: download files from the terminal
- windows-terminal: better terminal for Windows. Allows to open multiple tabs. Can handle command prompts, powershell, WSL, ...
- yt-dlp: download videos. It also allows to convert them into audio files
- zoxide: intelligent alternative to cd. Fast path traversal thanks to its history of paths

### Developer tools

```powershell
scoop install act gcc gdb git helix lazygit make miniconda3 nvm vscode yarn
scoop install extras/idea-ultimate extras/pycharm extras/webstorm
```

- act: runs Github Actions locally (with docker)
- gcc: C/C++ compiler
- gdb: C/C++ debugger
- git: versioning control
- helix: CLI editor
- idea-ultimate: JetBrains IDE for Java
- lazygit: git CLI UI
- make: build tool which runs Makefile configs
- miniconda3: Python virtual environment manager
- nvm: installs and manages multiple Node installations/versions
- pycharm: JetBrains IDE for Python
- vscode: Visual Studio Code, code editor
- yarn: JavaScript package manager
- webstorm: JetBrains IDE for Javascript and Typescript

### Virtualization

```powershell
winget install Docker.DockerDesktop Oracle.VirtualBox

wsl --install --distribution Ubuntu
```

- docker: runs and manages containers
- virtualbox: handles virtual machines
- WSL: windows subsystem for linux

### Backup tools

```powershell
scoop restic resticprofile

winget install Google.GoogleDrive
```

- restic: CLI backup tool
- resticprofile: allows to configure restic using configuration files
- Google Drive: allows to sync files with Goodle Drive and allows to access it as if it were a local drive

## Docs navigation

[< Preliminary steps](preliminary_steps.md)

[> Applications configuration](apps_config.md)
