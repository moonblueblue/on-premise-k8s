#!/bin/bash

# 헬름 차트 추가
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

# # 헬름 차트 설치
helm install harbor bitnami/harbor \
    -n harbor --create-namespace \
    -f values.yaml \
    --version 24.3.4
