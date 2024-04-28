FROM --platform=arm64 ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Run initial update
RUN apt-get update

# Install SSH server
RUN apt-get install -y --no-install-recommends openssh-server && \
	ssh-keygen -A && \
	mkdir -p /run/sshd

# Install base packages
RUN yes | unminimize && \
	apt-get install -y --no-install-recommends \
		# Base system utils
		nano git openssh-client apt-transport-https curl bash \
		gnupg sudo man-db bash-completion wget unzip less locales \
		build-essential file pwgen htop jq software-properties-common rsync \
		# Fancy shell stuff
		bat fzf \
		# Network tools
		nmap mtr-tiny host net-tools iputils-ping traceroute dnsutils && \
	echo "%sudo ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers && \
	echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
	echo "en_UK.UTF-8 UTF-8" >> /etc/locale.gen && \
	locale-gen

# Install language support
# Install Python
RUN add-apt-repository ppa:deadsnakes/ppa -y && \
	apt-get install -y --no-install-recommends \
		python3.11-venv python3.11-dev python3-pip python3-venv python3-setuptools && \
	pip3 install wheel && \
	pip3 install poetry

# Install NodeJS
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - && \
	apt-get install -y --no-install-recommends nodejs

# Install GoLang
RUN	apt install -y --no-install-recommends golang-go

# CLI Tools
# Install MinIO MC
RUN curl -L https://dl.min.io/client/mc/release/linux-arm64/mc > /usr/bin/mc && \
	chmod +x /usr/bin/mc

# Install kubectl
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
	echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list && \
	apt-get update && \
	apt-get install --no-install-recommends -y kubectl

# Install Kubectx & Kubens
RUN curl -L https://raw.githubusercontent.com/ahmetb/kubectx/master/kubectx > /usr/local/bin/kubectx && \
	curl -L https://raw.githubusercontent.com/ahmetb/kubectx/master/kubens > /usr/local/bin/kubens && \
	chmod +x /usr/local/bin/kubectx && \
	chmod +x /usr/local/bin/kubens

# Install Helm3
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

# Install Terraform & Vault
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - && \
	echo "deb https://apt.releases.hashicorp.com focal main" > /etc/apt/sources.list.d/hashicorp.list && \
    apt-get update && \
	apt-get install -y terraform vault && \
	# Allow running of vault without root
	setcap cap_ipc_lock= /usr/bin/vault

# Install Istioctl
COPY --from=istio/istioctl:1.21.0 /usr/local/bin/istioctl /usr/bin/istioctl

# Install FluxCD
COPY --from=fluxcd/flux-cli:v2.2.3 /usr/local/bin/flux /usr/bin/flux

COPY ./sshd_config /etc/ssh/sshd_config

# Add user "behn"
RUN useradd -m -G sudo behn && \
	su -c "ssh-keygen -b 2048 -f /home/behn/.ssh/id_rsa -t rsa -q -N ''" behn && \
	passwd -d behn && \
	chmod 700 /home/behn/.ssh && \
	curl -L https://github.com/BehnH.keys > /home/behn/.ssh/authorized_keys && \
	chown behn: /home/behn/.ssh/authorized_keys && \
	chmod 600 /home/behn/.ssh/authorized_keys && \
	chown root: /etc/ssh/sshd_config