#!/usr/bin/env sh

version="0.2.8-2"
url="https://github.com/pkgs-hub/vyatta-zia-server/releases/download/v${version}/vyatta-zia-server_${version}_amd64.deb"

output="$(pwd)/$(basename "${url}")"

echo "[${0}] Downloading ${url}..."
curl -s -L "${url}" -o "${output}"

echo "[${0}] Adding ${output} to pending packages..."
echo "${output}" >>packages.txt
