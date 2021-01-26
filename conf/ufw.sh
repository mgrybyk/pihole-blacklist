# allow from any
for i in 443 33355 33334 31194 34141; do
   ufw allow from any to any port $i
done

# allow from ip
for i in '10.254.224.209' '51.254.224.209' '86.91.0.0/16' '46.222.0.0/16' '46.6.0.0/16' '31.42.0.0/16' '31.161.139.0/24' '178.22.62.0/24' '217.67.246.50' '10.66.66.0/24'; do
   ufw allow from $i to any port 53
   ufw allow from $i to any port 853
done

# wireguard
ufw allow from 10.66.66.0/24 to 10.66.66.1
