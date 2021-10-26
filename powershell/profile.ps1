Import-Module posh-git
Import-Module oh-my-posh
Import-Module Terminal-Icons

#Set-PoshPrompt -Theme mt
#Set-PoshPrompt -Theme marcduiker
Set-PoshPrompt -Theme material

cd $([System.Environment]::GetEnvironmentVariable('WORK_MAIN_REPO_DIR','machine'))

function reload-profile { & $PROFILE }
function get-git-status { git status }
function git-lfg { git add .; git commit -m $args; git push }
function edit-config-ini { vim $([System.Environment]::GetEnvironmentVariable('WORK_CONFIGURATION_FILE','machine')) }
function edit-win-term-profile { 
  vim %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json 
}
function edit-current-posh-theme {
  $returnValue = $(Get-PoshContext)
  vim $returnValue[0]
}
function start-docfx-for-cur-dir {
  docfx --serve docfx.json -p 1243
}
function git-pull {
  git pull
}
function get-serial-number {
	Get-WmiObject win32_bios | select SerialNumber
}

# Remove builtin aliases
Remove-Alias gp -Force -ErrorAction SilentlyContinue

Set-Alias -Name reload -Value reload-profile
Set-Alias -Name gst -Value get-git-status
Set-Alias -Name config-ini -Value edit-config-ini
Set-Alias -Name config-winterm -Value edit-win-term-profile
Set-Alias -Name edit-theme -Value edit-current-posh-theme
Set-Alias -Name lfg -Value git-lfg
Set-Alias -Name docfx-start -Value start-docfx-for-cur-dir
Set-Alias -Name gp -Value git-pull
Set-Alias -Name serialnumber -Value get-serial-number


#$HOST.UI.RawUI.WindowTitle = Get-Location

$env:POSH_GIT_ENABLED = $true
