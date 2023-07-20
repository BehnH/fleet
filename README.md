
# Fleet 🚢

_My FluxCD-managed Kubernetes cluster(s) & Terraform definitions_

---

## 📚 Docs

Docs are very much still a work-in-progress, but you can find more under [`docs/`](/docs/).
The docs contain the initial spec for my K8s hosts, as well as k8s-hosted application and Terraform definition information. These docs are living, and are updated as I make changes to my cluster and infrastructure.

## 💻 Infrastructure

Currently, I run a single cluster, which operates on Hetzner's ARM line-up. Specifically, the master runs on the CAX11, and the workers run on the CAX21.

I'll have a blogpost at some point about how I deployed these. And maybe I'll automate it... who knows, really.

## 📝 Questions or Complaints

Open a GitHub issue, I'll get back to you some time this centuary. **This is not meant to be a production-ready thing. It's for my own internal services, so it has it's flaws**