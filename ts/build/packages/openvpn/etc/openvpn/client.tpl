client
dev tun
remote $OPENVPN_SERVER
port $OPENVPN_PORT
proto $OPENVPN_PROTO
pkcs12 client.p12
resolv-retry infinite
nobind
comp-lzo
verb 3
persist-tun
persist-key
ns-cert-type server
