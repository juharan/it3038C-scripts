function getIP{
    (get-netipaddress).ipv4address | Select-String "192*"}
$IP = getIP
$user = $env:username 
$ver = get-host | Select-Object Version
$host = $env:COMPUTERNAME
$date = get-date -DisplayHint Date
$body = "This machine's IP is $IP, User is $User, Hostname is $HOST, PowerShell version is $ver, Today's Date is $DATE."
write-Host($body)
Send-MailMessage -To "botheaj@ucmail.uc.edu" -From "aa.juhar@gmail.com" -Subject "IT3038C Windows SysInfo" -Body $BODY -SmtpServer smtp.gmail.com -port 587 -UseSSL -Credential (Get-Credential)