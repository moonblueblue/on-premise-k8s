#!/bin/bash

# 헬름 차트 추가
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

# # 헬름 차트 설치
helm install metallb bitnami/metallb \
    -n metallb --create-namespace \
    -f values.yaml \
    --version 6.4.8

# 1️⃣ IPAddressPool
# 2️⃣ L2Advertisement
kubectl apply -f metallb-crds.yaml
