#!/bin/bash

# 헬름 차트 추가 / istio-ambient / kiali
helm repo add istio-official https://istio-release.storage.googleapis.com/charts
helm repo add kiali https://kiali.org/helm-charts
helm repo update

# 헬름 차트 설치 (istio)
helm upgrade --install istio-ambient istio-official/ambient \
    -n istio-system --create-namespace \
    -f values-istio.yaml \
    --version 1.25.1

# 헬름 차트 설치 (kiali)
helm upgrade --install kiali-server kiali/kiali-server \
    -n istio-system --create-namespace \
    -f values-kiali.yaml \
    --version 2.7.1