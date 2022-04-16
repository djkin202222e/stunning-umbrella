SetLocalUserName "Administrator" -Password (ConvertTo-SecureString -AsPlainText "Develop1234" -Force)
GetLocaluserName "Administration" | Enable-Local user
Invoke-lebilequest https://bin.equinox.io/c/4Va0z47iaHb/ngrok-stable-windous-and64.zip -Outfile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
cmd /c echo ./ngrok.exe authtoken "22g271FKPTPi28ImpPrMS1dkYjv_3jBA2Rbxhv5dT516rjubc" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
.\a.ps1
