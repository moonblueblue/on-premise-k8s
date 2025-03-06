#!/bin/bash

helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

helm install test-nginx bitnami/nginx \
  -n test --create-namespace \
  --version 19.0.1

# ------------------------------

kubectl apply -f - <<EOF
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: test-ingress
  namespace: test
spec:
  ingressClassName: nginx
  rules:
    - host: www.moizago.store
      http:
        paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: test-nginx
                port:
                  number: 80
EOF
