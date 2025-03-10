#!/bin/bash

# 헬름 차트 추가
helm repo add harbor https://helm.goharbor.io
helm repo update

# # 헬름 차트 설치
helm install harbor harbor/harbor \
    -n harbor --create-namespace \
    -f values.yaml \
    --version 1.16.2
