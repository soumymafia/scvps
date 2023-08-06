mkdir -p /etc/udp
mkdir -p /etc/udp/
cat <<NANI > /etc/udp/config.json
{
  "listen": ":36712",
  "stream_buffer": 33554432,
  "receive_buffer": 83886080,
  "auth": {
    "mode": "passwords"
  }
}
NANI
chmod +x /etc/udp/*

if [ -z "$1" ]; then
cat <<EOF > /etc/systemd/system/udp-custom.service
[Unit]
Description=FN

[Service]
User=root
Type=simple
ExecStart=/etc/udp/udp-custom server
WorkingDirectory=/etc/udp/
Restart=always
RestartSec=2s

[Install]
WantedBy=default.target
EOF
else
cat <<EOF > /etc/systemd/system/udp-custom.service
[Unit]
Description=FN

[Service]
User=root
Type=simple
ExecStart=/etc/udp/udp-custom server -exclude $1
WorkingDirectory=/etc/udp/
Restart=always
RestartSec=2s

[Install]
WantedBy=default.target
EOF
fi

cat <<NONF > /etc/systemd/system/udp-request.service
[Unit]
Description=FN
After=network.target

[Service]
Type=simple
User=root
WorkingDirectory=/etc/udp
ExecStart=/etc/udp/udp-request -ip=$request_public_ip -net=$interface$Port -mode=system
Restart=always
RestartSec=3s

[Install]
WantedBy=multi-user.target6
NONF

echo start service udp-custom
systemctl start udp-custom &>/dev/null
systemctl enable udp-request &>/dev/null
systemctl start udp-request &>/dev/null
echo enable service udp-custom
systemctl enable udp-custom &>/dev/null