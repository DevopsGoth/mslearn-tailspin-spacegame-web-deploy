Write-Output "installing build info file" >> C:\temp\install.log

expand-archive "C:\temp\WebApp\Tailspin.SpaceGame.Web.zip" "C:\temp\WebApp"
Copy-Item C:\temp\WebApp\wwwroot\buildinfo.txt C:\inetpub\wwwroot\

Get-Content C:\temp\tailspin\wwwroot\buildinfo.txt >> C:\temp\install.log
Write-Output "donee" >> "C:\\temp\\done.log"