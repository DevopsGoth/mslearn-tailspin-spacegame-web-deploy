#Install-WindowsFeature Web-Mgmt-Service -ErrorAction SilentlyContinue
#Import-Module IISAdministration -ErrorAction SilentlyContinue

$file = '/WebDeploy_amd64_en-US.msi'
$link = "https://download.microsoft.com/download/0/1/D/01DC28EA-638C-4A22-A57B-4CEF97755C6C/$file"
$soft_name = 'webdeploy'

$find = Get-WmiObject -Class Win32_Product -Filter "Name = `'$soft_name`'"

if ($find -eq $null) {

    $tmp = "$env:TEMP\$file"
    $client = New-Object System.Net.WebClient
    $client.DownloadFile($link, $tmp)

    msiexec /i $tmp /qn
    del $tmp
    echo "Tried installing $soft_name"

}


New-WebApplication -Site "Default Web Site" -Name Tailspin -PhysicalPath c:\inetpub\wwwroot\Tailspin -Force