# VyOS: Live Build using Github Actions

This repository provides a live build environment for [VyOS](https://github.com/vyos/vyos-build) using Github Actions.

## TODO
- How to build Vyatta Packages for VyOS >= 1.4 (see [pkgs-hub](https://github.com/pkgs-hub/))?
- arm64 builds (e.g. for Banana Pi Routerboard)? - would be nice, but is not required

## Releases
When initiating releases, ensure to create a new tag following the format: major version dot minor version anything (e.g., 1.3.3-4). This tagging approach is crucial for GitHub Actions workflow, specifically for ISO creation. 

Presently, VyOS 1.3 (Equuleus) serves as the Long-Term Support (LTS) version. For instance, a release might be tagged as 1.3.3-4, signifying it as the fourth release within version 1.3.

Please note that the "latest release" checkbox should only be selected for LTS versions of VyOS.

## Custom Packages
Building VyOS enables the ability to add custom packages to your iso image.

We added the following packages:
- [prometheus/node_exporter](https://github.com/pkgs-hub/vyatta-node_exporter): prometheus exporter for host metrics
- [tynany/frr_exporter](https://github.com/pkgs-hub/vyatta-frr_exporter): prometheus exporter for free range routing metrics
- [secshellnet/wpm-api-vyos](https://github.com/secshellnet/wpm-api-vyos/): wireguard peer manager api
- [marcelcoding/zia](https://github.com/pkgs-hub/vyatta-zia-server): Wireguard thorugh websockets
- [simple webserver](https://github.com/pkgs-hub/vyatta-web): for preseed, kickstart, ...

We are looking forward to add the following packages too:
- [prometheus/snmp_exporter](#): prometheus exporter for metrics from snmp
- [prometheus_wireguard_exporter](https://github.com/pkgs-hub/vyatta-wireguard_exporter): prometheus exporter for for wireguard metrics
