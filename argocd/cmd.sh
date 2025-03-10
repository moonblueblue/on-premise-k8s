#!/bin/bash

# 헬름 차트 추가
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

# # 헬름 차트 설치
helm upgrade --install argocd argo/argo-cd \
    -n argocd --create-namespace \
    -f values.yaml \
    --version 7.8.8
