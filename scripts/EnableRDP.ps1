# Enable Remote Desktop connections 
Set-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\" -Name "fDenyTSConnections" -Value 0

# Disable Secured Remote Desktop Session
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -name "UserAuthentication" -Value 0

# Enable Windows firewall rules to allow incoming RDP
Enable-NetFirewallRule -DisplayGroup "Bureau à distance"
