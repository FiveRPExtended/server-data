$url = "https://runtime.fivem.net/artifacts/fivem/build_server_windows/master/3184-6123f9196eb8cd2a987a1dd7ff7b36907a787962/server.zip"
$output = "$PSScriptRoot\server.zip"
$zip_output = "$PSScriptRoot"
$start_time = Get-Date

Import-Module BitsTransfer
Write-Output "Downloading server files"
Start-BitsTransfer -Source $url -Destination $output
Write-Output "Extracting files"
Expand-Archive -LiteralPath $output -DestinationPath $zip_output -Force
Remove-Item $output
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
