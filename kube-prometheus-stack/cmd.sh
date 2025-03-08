#!/bin/bash

# 헬름 차트 추가
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

# # 헬름 차트 설치
helm install kube-prometheus-stack prometheus-community/kube-prometheus-stack \
    -n kube-prometheus-stack --create-namespace \
    -f values.yaml \
    --version 69.8.0
