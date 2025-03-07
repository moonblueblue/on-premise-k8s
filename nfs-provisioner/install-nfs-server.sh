#!/bin/bash

# 0️⃣ nfs 서버로 사용할 서버로 접속

# 1️⃣ NFS 서버 & 클라이언트 설치 (nfs 서버를 이용하는 서버에 nfs-common 설치 필요 🔥)
sudo apt update && sudo apt install -y nfs-kernel-server nfs-common rpcbind

# 2️⃣ 공유할 디렉토리 설정
sudo mkdir -p /mnt/nfs-storage
sudo chown nobody:nogroup /mnt/nfs-storage
sudo chmod 777 /mnt/nfs-storage

# 3️⃣ /etc/exports 설정
echo "/mnt/nfs-storage *(rw,sync,no_subtree_check,no_root_squash)" | sudo tee -a /etc/exports

# 4️⃣ NFS 서비스 재시작
sudo systemctl restart nfs-kernel-server

# 5️⃣ NFS 서버 상태 확인
sudo systemctl status nfs-kernel-server

# 6️⃣ NFS 서버 접속 테스트
showmount -e localhost
