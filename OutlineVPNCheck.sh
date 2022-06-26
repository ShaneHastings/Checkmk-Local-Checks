# Check_mk Local check
# Querys port 63280 to see if the system is listening on that port, as a proxy for
# determining whether the Outline VPN server is running.
# Author: Shane Hastings | 2022-06-26

if [[ $(netstat -an | grep 63280 | grep -i listen) ]]; then
    echo '0 "Outline VPN Service" - VPN service appears to be working. System is LISTENING on port :63280.'
else
    echo '2 "Outline VPN Service" - VPN service appears down. Shadowbox is NOT listening on port :63280.'
fi
