Connect-SPOService -URL https://ENTER-YOUR-URL.sharepoint.com/
$csv = Import-Csv c:\path\to\your.csv
$email = Read-Host 'What is your admin login email?'
foreach ($line in $csv) {
    Set-SPOUser -Site $line.SiteURL -LoginName $email -IsSiteCollectionAdmin $true
}