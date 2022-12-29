#!/usr/bin/env sh

version="1.5.0-1"
url="https://github.com/pkgs-hub/vyatta-node_exporter/releases/download/v${version}/vyatta-node-exporter_${version}_amd64.deb"

output="$(pwd)/$(basename "${url}")"

echo "[${0}] Downloading ${url}..."
curl -s -L "${url}" -o "${output}"

echo "[${0}] Adding ${output} to pending packages..."
echo "${output}" >>packages.txt
