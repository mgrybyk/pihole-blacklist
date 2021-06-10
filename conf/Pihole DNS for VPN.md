For every VPN inerface add a dnsmasq conf:

`vi /etc/dnsmasq.d/02-wg0.conf`
```
interface=wg0
```
