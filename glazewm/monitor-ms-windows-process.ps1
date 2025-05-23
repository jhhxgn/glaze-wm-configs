while ($true) {
    Clear-Host
    Write-Host "Current Teams Windows:" -ForegroundColor Green
    Get-Process ms-teams | ForEach-Object {
        [PSCustomObject]@{
            Id    = $_.Id
            Title = $_.MainWindowTitle
        }
    } | Format-Table -AutoSize
    Start-Sleep -Seconds 1
}