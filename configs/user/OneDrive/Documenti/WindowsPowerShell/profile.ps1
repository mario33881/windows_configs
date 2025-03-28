
#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
If (Test-Path "A:\Applications\Scoop\apps\miniconda3\current\Scripts\conda.exe") {
    (& "A:\Applications\Scoop\apps\miniconda3\current\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
}
#endregion
