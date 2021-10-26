function MkLink {
	Param ([Parameter(Mandatory=$true, Position=0)] [string] $TargetPath, [Parameter(Mandatory=$true, Position=1)] [string] $SourcePath)
	if(Test-Path -Path $SourcePath) { 
		Write-Output "File already exists, skipping..." 
	}
	else {
		Write-Output "`nSymlinking $TargetPath to $SourcePath"
		New-Item -ItemType SymbolicLink -Path "$SourcePath" -Target "$TargetPath"
	}
}

MkLink "$pwd\vim\ideavimrc" "~\.ideavimrc"
MkLink "$pwd\vim\vimrc" "~\.vimrc"
