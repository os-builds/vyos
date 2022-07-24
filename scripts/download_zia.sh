#!/usr/bin/env sh

echo "[${0}] Gathering zia-server download url..."
url=$(curl -s "https://api.github.com/repos/MarcelCoding/zia/releases/latest" |
  jq -r '.assets[] | select(.name | contains("amd64.deb")) | select(.name | contains("zia-server")) | .browser_download_url')

output="$(pwd)/$(basename "${url}")"

echo "[${0}] Downloading ${url}..."
curl -s -L "${url}" -o "${output}"

echo "[${0}] Adding ${output} to pending packages..."
echo "${output}" >>packages.txt
