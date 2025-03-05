## ☸️ **Kubernetes On-Premises Installation Guide** 🏗️ 🚀

### 📌 Installation Method

All system tools are installed using **Helm Charts**. ✅  
For more details, check the **[Helm Official Documentation](https://helm.sh/docs/)**.

You can browse and explore **Helm Chart repositories** on **[📦 Artifact Hub](https://artifacthub.io/)**,  
a **centralized repository** for discovering **Helm charts, Kubernetes operators, and other packages**.

---

### 🛠 General System Tools Installation Order

| **No** | **Tool**        | **Description**                                                |
| ------ | --------------- | -------------------------------------------------------------- |
| 1️⃣     | `metallb`       | ⚡ Load balancer for bare-metal Kubernetes clusters            |
| 2️⃣     | `ingress-nginx` | 🌐 Ingress controller for managing external access to services |
| 3️⃣     | `cert-manager`  | 🔒 Automatically manages TLS certificates in Kubernetes        |
