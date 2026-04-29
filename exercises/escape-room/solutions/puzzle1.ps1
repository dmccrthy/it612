#!/usr/bin/env pwsh

$record = Import-Csv ..\windows_events.csv | Where-Object { $_.EventType -eq "RoleChange" -and $_.OldRole -eq "student" -and $_.NewRole -eq "admin" -and $_.timestamp -ge "2026-04-28T00:00:00Z" -and $_.timestamp -le "2026-04-28T06:00:00Z" }

Write-Output $record.uid
