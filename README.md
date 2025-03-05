## ☸️ **Kubernetes On-Premises Installation Guide** 🏗️ 🚀

### 📌 k8s cluster

- Kubernetes cluster is deployed using **🔗 [Kubespray](https://kubernetes-sigs.github.io/kubespray/)**,  
  an automated deployment tool based on **Ansible** and designed for **Infrastructure as Code (IaC)**.

- It provides a flexible and reproducible way to set up and manage on-premises or cloud-based Kubernetes clusters. 🔄

### 📌 system tools

- All system tools are installed using **Helm Charts**. 📦  
  For more details, check the **[Helm Official Documentation](https://helm.sh/docs/)**.

- You can browse and explore **Helm Chart repositories** on **[🗄 Artifact Hub](https://artifacthub.io/)**,  
  a **centralized repository** for discovering **Helm charts, Kubernetes operators, and other packages**.

---

### 🛠 General System Tools Installation Order

### 🛠 General System Tools Installation Order

### 🛠 General System Tools Installation Order

| **No** | **Tool**        | **Description**                                                   |
| ------ | --------------- | ----------------------------------------------------------------- |
| 0️⃣     | `kubespray`     | ⚙️ Ansible-based tool for automated Kubernetes cluster deployment |
| 1️⃣     | `metallb`       | ⚡ Load balancer for bare-metal Kubernetes clusters               |
| 2️⃣     | `ingress-nginx` | 🌐 Ingress controller for managing external access to services    |
| 3️⃣     | `cert-manager`  | 🔒 Automatically manages TLS certificates in Kubernetes           |
|  |
