#Ops Challenge 11
#Automated Endpoint Configuration

#Enable File and Printer Sharing
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes
#Allow ICMP traffic
#IPv4
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol="icmpv4:8,any" dir=in action=allow
#IPv6
netsh advfirewall firewall add rule name="ICMP Allow incoming V6 echo request" protocol="icmpv6:8,any" dir=in action=allow
#Enable Remaonte Management
Enable-PSRemoting
#Remove Bloatware
Get-AppxPackage * | Remove-AppxPackage
#Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
#Disable SMBv1
Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol
