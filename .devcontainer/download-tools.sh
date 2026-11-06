#!/usr/bin/env bash

set -euxo pipefail

# Detect architecture
ARCH=$(uname -m)
case ${ARCH} in
    x86_64)
        ARCH_SUFFIX="amd64"
        ;;
    aarch64)
        ARCH_SUFFIX="arm64"
        ;;
    *)
        echo "Unsupported architecture: ${ARCH}"
        exit 1
        ;;
esac

curl -sL "https://github.com/oras-project/oras/releases/download/v1.2.0/oras_1.2.0_linux_${ARCH_SUFFIX}.tar.gz" | sudo tar xvz -C /usr/local/bin/ oras

DIVE_VERSION=$(curl -sL "https://api.github.com/repos/wagoodman/dive/releases/latest" | grep '"tag_name":' | sed -E 's/.*"v([^"]+)".*/\1/')
curl -fOL "https://github.com/wagoodman/dive/releases/download/v${DIVE_VERSION}/dive_${DIVE_VERSION}_linux_${ARCH_SUFFIX}.deb"
sudo apt install ./dive_${DIVE_VERSION}_linux_${ARCH_SUFFIX}.deb
rm -f ./dive_${DIVE_VERSION}_linux_${ARCH_SUFFIX}.deb

if ! command -v claude >/dev/null 2>&1; then
  curl -fsSL https://claude.ai/install.sh | bash
fi
