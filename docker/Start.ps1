Write-Host "=== Configuring IIS binding to port 19595... ==="
Import-Module WebAdministration
Set-ItemProperty "IIS:\Sites\Default Web Site" -Name bindings -Value @{protocol="http";bindingInformation="*:19595:"}

Write-Host "=== Starting IIS... ==="
net start w3svc
Write-Host "=== Container ready on port 19595 ==="

Wait-Event
