Write-Host 'Join the domain'

Start-Sleep -m 2000

Write-Host "First, set DNS to DC to join the domain"
$newDNSServers = "192.168.56.2"
$adapters = Get-WmiObject Win32_NetworkAdapterConfiguration | Where-Object {$_.IPAddress -match "192.168.56."}
$adapters | ForEach-Object {$_.SetDNSServerSearchOrder($newDNSServers)}

Start-Sleep -m 2000

Write-Host "Now join the domain"


$user = "windomain.local\vagrant"
$pass = ConvertTo-SecureString "vagrant" -AsPlainText -Force
$DomainCred = New-Object System.Management.Automation.PSCredential $user, $pass
Add-Computer -DomainName "windomain.local" -credential $DomainCred -PassThru -Restart
