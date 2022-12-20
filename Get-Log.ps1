
Get-Eventlog -After (Get-Date).AddHours(-24) Out-File -FilePath C:\Users\phest\Desktop\SampleEventOutput.txt