#!/usr/bin/env sh

version="1.0.0"
url="https://github.com/pkgs-hub/vyatta-web/releases/download/v${version}/vyatta-web_${version}_amd64.deb"

output="$(pwd)/$(basename "${url}")"

echo "[${0}] Downloading ${url}..."
curl -s -L "${url}" -o "${output}"

echo "[${0}] Adding ${output} to pending packages..."
echo "${output}" >>packages.txt
