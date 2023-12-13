oh-my-posh init pwsh --config 'D:\OneDrive\Documents\PowerShell\PoshThemes\mod_default.omp.json' | Invoke-Expression

$global:cdc = "D:\OneDrive - University of Kansas\College Information\Year - 2023 Fall"
$global:cdr = "D:\OneDrive - University of Kansas\Research"  

Function cdc { cd $cdc }
Function cdr { cd $cdr }
Function cdp { cd "D:\OneDrive\Documents" }
Function scd {
	param(
		[Parameter()] [Int] $num
	)
	for ($i = 0; $i -lt $num; $i += 1) {
		cd ..
	}
}
Function cdl { 
	param(
		[Parameter()] [String] $loc
	)
	cd $loc; ls .
}

Function find([Parameter(Position=0)][System.String] $search_path, [Parameter(Position=1)][System.String] $filter) {
    Get-ChildItem -Path $search_path -Recurse -Include $filter -ErrorAction SilentlyContinue
}

Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -MaximumHistoryCount 10000
Set-PSReadLineOption -HistorySavePath "C:\Users\30wth\ConsoleHost_history.txt"
Set-PSReadLineOption -TerminateOrphanedConsoleApps

