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

| **No** | **Tool**                | **Description**                               |
| ------ | ----------------------- | --------------------------------------------- |
| 0️⃣     | `kubespray`             | ⚙️ Ansible-based Kubernetes deployment tool   |
| 1️⃣     | `metallb`               | ⚡ Load balancer for bare-metal environments  |
| 2️⃣     | `ingress-nginx`         | 🌐 Ingress controller for external access     |
| 3️⃣     | `cert-manager`          | 🔒 Automatic TLS certificate management       |
| 4️⃣     | `nfs-provisioner`       | 📁 Dynamic NFS storage provisioning           |
| 5️⃣     | `argocd`                | 🌀 GitOps-based Kubernetes deployment tool    |
| 6️⃣     | `minio`                 | ☁️ S3-compatible object storage               |
| 7️⃣     | `kube-prometheus-stack` | 📊 Monitoring stack with Prometheus & Grafana |
