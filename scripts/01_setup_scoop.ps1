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

Write-Output "Done"
