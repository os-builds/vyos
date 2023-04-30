# VyOS: Live Build using Github Actions

This repository provides a live build environment for [VyOS](https://github.com/vyos/vyos-build) using Github Actions.

## Update VyOS

Update `env.version` in `.github/workflows/ci.yaml`.

## How to release

```
git tag <name>
git push --tags
```
