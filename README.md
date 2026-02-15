# VyOS: Live Build using Github Actions

This repository provides a live build environment for [VyOS](https://github.com/vyos/vyos-build) using Github Actions.

## Releases
When initiating releases, ensure to create a new tag following the format: major version dot minor version anything
(e.g., 1.3.3-4). This tagging approach is crucial for GitHub Actions workflow, specifically for ISO creation.

## Custom Packages
Building VyOS enables the ability to add custom packages to your iso image.

We previously had added the following packages:
- [prometheus/node_exporter](https://github.com/pkgs-hub/vyatta-node_exporter): prometheus exporter for host metrics
- [tynany/frr_exporter](https://github.com/pkgs-hub/vyatta-frr_exporter): prometheus exporter for free range routing metrics
- [marcelcoding/zia](https://github.com/pkgs-hub/vyatta-zia-server): Wireguard thorugh websockets
- [simple webserver](https://github.com/pkgs-hub/vyatta-web): for preseed, kickstart, ...

With vyos 1.4 they transitioned to XML-defined command definitions, which our packages are not compatible with.
Since vyos 1.5 Node and FRR Exporter are supported in the official image. We might add other packages like these later on:
- [prometheus/snmp_exporter](#): prometheus exporter for metrics from snmp
- [prometheus_wireguard_exporter](https://github.com/pkgs-hub/vyatta-wireguard_exporter): prometheus exporter for for wireguard metrics
