#!/usr/bin/env sh

version="1.0.0"
url="https://github.com/secshellnet/wpm-api-vyos/releases/download/v${version}/scripts/wpm-api-vyos_${version}_amd64.deb"

output="$(pwd)/$(basename "${url}")"

echo "[${0}] Downloading ${url}..."
curl -s -L "${url}" -o "${output}"

echo "[${0}] Adding ${output} to pending packages..."
echo "${output}" >>packages.txt
