
#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
If (Test-Path "A:\Applications\Scoop\apps\miniconda3\current\Scripts\conda.exe") {
    (& "A:\Applications\Scoop\apps\miniconda3\current\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
}
#endregion

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r' -EnableAliasFuzzyEdit

# example command - use $Location with a different command:
$commandOverride = [ScriptBlock]{ param($Location) cd $Location }
# pass your override to PSFzf:
Set-PsFzfOption -AltCCommand $commandOverride 

# zoxide: smart cd alternative
Invoke-Expression (& { (zoxide init powershell | Out-String) })
