echo "installing build info file" >> C:\temp\install.log

expand-archive C:\temp\WebApp\Tailspin.SpaceGame.Web.zip C:\temp\tailspin
Copy-Item C:\temp\tailspin\wwwroot\buildinfo.txt C:\inetpub\wwwroot\buildinfo.txt

Get-Content C:\temp\tailspin\wwwroot\buildinfo.txt >> C:\temp\install.log