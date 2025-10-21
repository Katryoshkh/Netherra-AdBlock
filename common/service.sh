#!/system/bin/sh

MODDIR=${0%/*}
DNSPORT=5353

$MODDIR/dnsmasq \
  --no-resolv \
  --addn-hosts=$MODDIR/blocklist.txt \
  --listen-address=127.0.0.1 \
  --port=$DNSPORT &

iptables -t nat -C OUTPUT -p udp --dport 53 -j REDIRECT --to-ports $DNSPORT 2>/dev/null || \
iptables -t nat -A OUTPUT -p udp --dport 53 -j REDIRECT --to-ports $DNSPORT

iptables -t nat -C OUTPUT -p tcp --dport 53 -j REDIRECT --to-ports $DNSPORT 2>/dev/null || \
iptables -t nat -A OUTPUT -p tcp --dport 53 -j REDIRECT --to-ports $DNSPORT

iptables -C OUTPUT -p tcp --dport 853 -j REJECT 2>/dev/null || \
iptables -A OUTPUT -p tcp --dport 853 -j REJECT
