# Kubernetes Cluster Documentation

**WIP: This documentation is a heavy WIP and is mostly just a skeleton at the moment.**

## Introduction

This documentation provides an overview of my personal Kubernetes cluster, and the infrastructure supporting it.

In this documentation, you will find information on how to deploy and manage applications on the cluster, as well as instructions for scaling and upgrading the cluster as needed.

Please note that this documentation is intended for personal use only, and is provided on an as-is basis. While I strive to keep this documentation accurate and up-to-date, I make no guarantees as to its accuracy or completeness. Use this documentation at your own risk.

## Index

### Infrastructure

- [Infrastructure Overview](infrastructure/overview.md)
- [Infrastructure Components](infrastructure/components.md)
- [Infrastructure Configuration](infrastructure/configuration.md)
  - [Initial Setup](infrastructure/configuration.md#initial-setup)
  - [Network Configuration](infrastructure/configuration.md#network-configuration)

### Cluster Applications

- [Cluster Applications Overview](applications/overview.md)
- [Application Directory](applications/directory.md)
  - [Namespace: Cert Manager](applications/directory/cert-manager.md)
    - [Cert Manager](applications/directory/cert-manager/cert-manager.md)
  - [Namespace: Database](applications/directory/database.md)
    - [Redis](applications/directory/database/redis.md)
  - [Namespace: Kube System](applications/directory/kube-system.md)
    - [External Secrets](applications/directory/kube-system/external-secrets.md)
    - [SMB CSI Driver](applications/directory/kube-system/smb-csi-driver.md)
  - [Namespace: Media](applications/directory/media.md)
    - [Sonarr](applications/directory/media/sonarr.md)
    - [Sabnzbd](applications/directory/media/sabnzbd.md)
    - [Nzbhydra2](applications/directory/media/nzbhydra2.md)
  - [Namespace: Monitoring](applications/directory/monitoring.md)
    - [Prometheus](applications/directory/monitoring/prometheus.md)
    - [Mimir](applications/directory/monitoring/mimir.md)
    - [Kiali](applications/directory/monitoring/kiali.md)
    - [Grafana](applications/directory/monitoring/grafana.md)
  - [Namespace: Networking](applications/directory/networking.md)
    - [Tailscale Golink](applications/directory/networking/tailscale-golink.md)
    - [Headscale](applications/directory/networking/headscale.md)
  - [Namespace: Security](applications/directory/security.md)
    - [Authentik](applications/directory/security/authentik.md)
    - [Hashicorp Vault](applications/directory/security/vault.md)
  - [Namespace: Storage](applications/directory/storage.md)
    - [Minio](applications/directory/storage/minio.md)