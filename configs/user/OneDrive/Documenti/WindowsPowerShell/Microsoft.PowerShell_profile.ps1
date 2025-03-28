Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r' -EnableAliasFuzzyEdit

# example command - use $Location with a different command:
$commandOverride = [ScriptBlock]{ param($Location) cd $Location }
# pass your override to PSFzf:
Set-PsFzfOption -AltCCommand $commandOverride 

# zoxide: smart cd alternative
Invoke-Expression (& { (zoxide init powershell | Out-String) })
