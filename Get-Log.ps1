
Get-EventLog system -After (Get-Date).AddHours(-24) | Out-File -FilePath home\joe\Desktop\last24.txt
Get-EventLog -LogName System -Entrytype error | Out-File -FilePath home\joe\Desktop\Errors.txt
Get-EventLog system -InstanceID 16
Get-EventLog system -Newest 20
$Events = Get-EventLog -LogName System -Newest 500
>> $Events | Group-Object -Property Source -NoElement | Sort-Object -Property Count | Format-List
