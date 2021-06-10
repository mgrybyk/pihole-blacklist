#!/bin/bas

oldPinset="od9obscoXQND56/DikypZrJkXGvbQV5Y61QGfcNitHo="
newPinset=$(/home/wi/tls-pinset.sh 1.1.1.1 443)

if [ "$oldPinset" == "$newPinset" ]; then echo OK; else echo NOT_OK; fi

echo old: $oldPinset
echo new: $newPinset
