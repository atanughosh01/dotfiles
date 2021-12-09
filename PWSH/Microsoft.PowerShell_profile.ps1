
# oh-my-posh --init --shell powershell --config ~/jandedobbeleer.omp.json | Invoke-Expression

# $global:DefaultUser = [System.Environment]::UserName

# oh-my-posh --init --shell pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/stelbent.minimal.omp.json | Invoke-Expression
oh-my-posh --init --shell pwsh --config ~\Documents\WindowsPowerShell\Modules\themes\stelbent.minimal.omp.json | Invoke-Expression

# Set Themes and Plugins
Import-Module PSReadLine
Import-Module oh-my-posh
Import-Module posh-git
$env:POSH_GIT_ENABLED = $true
Import-Module -Name Terminal-Icons
# Set-PoshPrompt -Theme stelbent.minimal
# Set-PoshPrompt -Theme powerlevel10k_modern
# Set-PoshPrompt -Theme ~/Modules/themes/stelbent.minimal.omp.json

# Shows navigable menu of all options when hitting Tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Autocompleteion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# ForwardWord and Undo
Set-PSReadLineKeyHandler -Key 'Ctrl+f' -Function ForwardWord
Set-PSReadLineKeyHandler -Key 'Ctrl+z' -Function Undo

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History

#Set the color for Prediction (auto-suggestion)
# Set-PSReadlineOption -Colors @{ Prediction = 'DarkGreen' }
