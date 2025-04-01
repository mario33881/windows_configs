Write-Output "Installing Office applications..."
winget install Microsoft.Teams
Write-OUtput ""

Write-Output "Installing utilities..."
winget install Malwarebytes.Malwarebytes
Write-Output ""

Write-Output "Installing CLI tools..."
winget install Microsoft.PowerShell
Write-Output ""

Write-Output "Installing virtualization tools..."
winget install Docker.DockerDesktop Oracle.VirtualBox
Write-Output ""

Write-Output "Installing backup tools..."
winget install Google.GoogleDrive
Write-Output ""

Write-Output "Done"
