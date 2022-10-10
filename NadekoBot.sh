if [[ $(service nadeko status | grep "active") ]]; then
    echo '0 "Nadeko Bot (Leo)" - Nadeko discord bot is running.'
else
    echo '2 "Nadeko Bot (Leo)" - Nadeko discord bot service is NOT running on DUBDISCBOT800.'
fi
