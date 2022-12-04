#!/bin/bash

version="1.5.0"
wget -O- https://github.com/prometheus/node_exporter/releases/download/v${version}/node_exporter-${version}.linux-amd64.tar.gz | tar xzC /opt/

touch /etc/default/node_exporter
cat <<_EOF > /etc/systemd/system/node_exporter.service
[Unit]
Description=Node Exporter

[Service]
EnvironmentFile=/etc/default/node_exporter
ExecStart=/opt/node_exporter-${version}.linux-amd64/node_exporter \$OPTIONS

[Install]
WantedBy=multi-user.target
_EOF

systemd daemon-reload
