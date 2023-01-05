
Get-EventLog system -After (Get-Date).AddHours(-24) Out-File -FilePath home\joe\Desktop\24hrlog.txt
Get-EventLog -LogName System -Entrytype error Out-File -FilePath home\joe\Desktop\Error.txt