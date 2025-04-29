#!/bin/bash

# 헬름 차트 추가
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

# # 헬름 차트 설치
helm upgrade --install minio bitnami/minio \
    -n minio --create-namespace \
    -f values.yaml \
    --version 15.0.6
