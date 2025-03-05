#!/bin/bash

# 헬름 차트 추가
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

# # 헬름 차트 설치
helm install metallb bitnami/metallb \
    -n metallb --create-namespace \
    -f values-metallb.yaml \
    --version 6.3.15

# 아이피 대역 범위 지정
kubectl apply -f IPAddressPool.yaml
