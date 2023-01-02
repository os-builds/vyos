#!/usr/bin/env sh

# this script downloads our vyatta packages from github.com/pkgs-hub
declare -A packages=(
  ["node_exporter"]="latest"
   ["frr_exporter"]="latest"
     ["zia-server"]="latest"
)

for package in ${!packages[@]}; do
  version=${packages[$package]}

  if [ "${version}" == "latest" ]; then
    url=$(curl -s "https://api.github.com/repos/pkgs-hub/vyatta-${package}/releases/latest" |\
      jq -r '.assets[] | select(.name | contains("amd64.deb")) | .browser_download_url')
  else
    url="https://github.com/pkgs-hub/vyatta-${package}/releases/download/v${version}/vyatta-${package}_${version}_amd64.deb"
  fi
  output="$(pwd)/$(basename "${url}")"

  echo "[${0}] Downloading ${package}:${version} from ${url}..."
  curl -s -L "${url}" -o "${output}"

  echo "[${0}] Adding ${output} to pending packages..."
  echo "${output}" >> packages.txt
done
