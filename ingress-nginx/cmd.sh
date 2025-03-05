#!/bin/bash

# helm 저장소 추가
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

# helm 차트 설치
helm install ingress-nginx ingress-nginx/ingress-nginx \
    -n ingress-nginx --create-namespace \
    -f values.yaml \
    --version 4.12.0
