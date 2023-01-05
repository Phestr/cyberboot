#Task 1
Get-Process | Sort-Object CPU -Descending
#Task 2
Get-Process | Sort-Object ID -Descending
#Task 3
Get-Process | Sort-Object WS -Descending | Select-Object -First 5
#Task 4
Start-Process -FilePath “c:\program files\internet explorer\iexplore.exe” https://owasp.org/www-project-top-ten/
#Task 5
$i=1
for(;$i -le 10;$i++)
{
    Start-process -FilePath “c:\program files\internet explorer\iexplore.exe” https://owasp.org/www-project-top-ten/
}
#Task 6
Stop-Process -name "iexplore"
#Task 7
Stop-Process -id "2188"