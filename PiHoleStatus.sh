# Check_mk Local check
# Querys the PiHole service via "pihole status" and greps for enabled 
# to determine whether the service is enabled and processing DNS queries.
# Author: Shane Hastings | 2022-06-26

if [[ $(pihole status | grep "enabled") ]]; then
    echo '0 "PiHole DNS" - Pi-Hole blocking is enabled on the network.'
else
    echo '2 "PiHole DNS" - Pi-Hole is NOT enabled and DNS requests are not being processed.'
fi
