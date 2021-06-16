#!/bin/bash

# usage: ./toTelegram.sh "Some Name" "date"
# the command should return OK in the first line to send a notification to telegram

# to send notification anyway add 3rd argument "force"
# usage: ./toTelegram.sh "Some Name" "date" force


cmd_name=$1
cmd=$2
force=$3

if [ -z "$1" ] || [ -z "$2" ]; then
        echo "arg 1 and 2 are required: cmd_name=$1 or cmd=$2";
fi;

res="$($cmd)"
status="$(echo "$res" | head -n 1)"

BOT_API_KEY="..."
CHAT_ID="-1001453778356"

if [ "$status" == "OK" ] && [ "$force" != "force" ]; then
        echo OK;
else
        echo "sending message to Telegram"
        curl -X POST "https://api.telegram.org/bot$BOT_API_KEY/sendMessage" -d "chat_id=$CHAT_ID&parse_mode=markdown&text=*$cmd_name*%0A$res";
fi
