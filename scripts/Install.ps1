echo "install step here" >> C:\temp\install.log

expand-archive C:\temp\WebApp\Tailspin.SpaceGame.Web.zip C:\temp\tailspin
cp C:\temp\tailspin\wwwroot\buildinfo.txt C:\inetpub\wwwroot\