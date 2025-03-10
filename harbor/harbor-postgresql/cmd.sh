#!/bin/bash

# 헬름 차트 추가
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

# 헬름 차트 설치
# 네임스페이스를 꼭 harbor 로 지정해야 함 🔥
helm install harbor-db-postgresql bitnami/postgresql \
    -n harbor --create-namespace \
    -f values.yaml \
    --version 16.4.16
