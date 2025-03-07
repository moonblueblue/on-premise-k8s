# README

- NFS 용도로 사용할 서버에 nfs-server 프로그램 설치
- 헬름 차트로 nfs-subdir-external-provisioner 설치
- nfs-server에 StorageClass를 이용하여 자동으로 프로비저닝 하려는 목적

### Helm Chart Document

- 🔗 Link : (https://artifacthub.io/packages/helm/nfs-subdir-external-provisioner/nfs-subdir-external-provisioner)

### Set-up and Install

0. 사전에 nfs-server 프로그램이 설치되어 있는 서버가 필요❗️
1. install-nfs-server.sh 실행
2. values.yaml 파일에 필요한 키/값 지정
3. cmd.sh 실행
