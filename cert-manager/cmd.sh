#!/bin/bash

# 헬름 차트 추가
helm repo add cert-manager https://charts.jetstack.io
helm repo update

# # 헬름 차트 설치
helm install cert-manager cert-manager/cert-manager \
    --namespace cert-manager --create-namespace \
    -f values.yaml \
    --version 1.17.1

# 1️⃣ ClusterIssuer
# 2️⃣ ClusterIssuer(staging)
kubectl apply -f cert-manager-crds.yaml
