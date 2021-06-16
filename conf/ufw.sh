# allow from any
for i in 443 33355 33334 31194 34141; do
   ufw allow from any to any port $i
done

# wireguard
ufw allow from 10.66.66.0/24 to 10.66.66.1
