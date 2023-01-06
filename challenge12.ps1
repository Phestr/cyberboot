
#!/usr/bin/env pwsh
#Ops Challenge 12

function IP {
    ipconfig /all | Out-File -FilePath $file
}

$file= "C:\Users\phest\Desktop\network_report.txt"
IP
Select-String -Path $file -Pattern IPv4
Remove-Item $file