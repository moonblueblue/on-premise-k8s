#!/bin/bash

# 헬름 차트 추가
helm repo add cert-manager https://charts.jetstack.io
helm repo update

# # 헬름 차트 설치
helm install my-cert-manager cert-manager/cert-manager --version 1.17.1 \
    --namespace cert-manager --create-namespace \
    -f values.yaml \
    --version 6.3.15

# 1️⃣ ClusterIssuer
# 2️⃣ ClusterIssuer(staging)
kubectl apply -f cert-manager-crds.yaml
