Get-NetAdapter -InterfaceIndex ((Get-NetIPAddress | Where-Object {($_.IPAddress -notlike "127.0.0.1") -and ($_.IPAddress -notlike "::1")}).InterfaceIndex | Select-Object -Unique) | Restart-NetAdapter
