#!/usr/bin/env sh

# this script downloads our vyatta packages from github.com/pkgs-hub
declare -A packages=(
  ["node_exporter"]="1.5.0-2"
   ["frr_exporter"]="1.1.4-2"
     ["zia-server"]="0.2.5-1"
)

for package in ${!packages[@]}; do
  version=${packages[$package]}
  url="https://github.com/pkgs-hub/vyatta-${package}/releases/download/v${version}/vyatta-${package}_${version}_amd64.deb"

  echo "[${0}] Downloading ${url}..."
  curl -s -L "${url}" -o "$(pwd)/$(basename "${url}")"

  echo "[${0}] Adding ${output} to pending packages..."
  echo "${output}" >>packages.txt
done
