#!/bin/bash

# 헬름 차트 추가
helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner
helm repo update

# mkdir -p /nfs-storage/$directory 명령어 사전에 모든 폴더가 미리 생성되어 있어야 함 🔥
# nfs 디렉토리 목록
declare -a DIRECTORY_LIST=(
    minio
    mysql
    argocd
    harbor
    kube-prometheus-stack
)

# 헬름 차트로 스토리지클래스 생성 설치
for directory in "${DIRECTORY_LIST[@]}"; do

    helm upgrade --install nfs-provisioner-$directory nfs-provisioner/nfs-subdir-external-provisioner \
        -n nfs-provisioner --create-namespace \
        -f values.yaml \
        --version 4.0.18 \
        --set nfs.path=/mnt/nfs-storage/$directory \
        --set nfs.volumeName=nfs-repo-$directory \
        --set storageClass.name=nfs-storage-$directory

done
