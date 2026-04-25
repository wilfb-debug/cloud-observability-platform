# Cloud Observability Platform (GKE + Prometheus + Grafana)

## 🚀 Overview

Production-style observability platform deployed on **Google Kubernetes Engine (GKE)** using **Terraform** and **Helm**.

Provides real-time monitoring of:

* Cluster health
* CPU / Memory usage
* Pod-level metrics
* Kubernetes workloads

---

## 🏗️ Architecture

* **GKE Cluster (Terraform)**
* **Prometheus (metrics collection)**
* **Grafana (visualisation)**
* **Alertmanager (alerting engine)**
* **Node Exporter (host metrics)**

---

## ⚙️ Tech Stack

* Google Cloud (GKE)
* Terraform
* Kubernetes
* Helm
* Prometheus
* Grafana

---

## 📸 Evidence

### Grafana Home

![Grafana Home](docs/evidence/grafana-home.png)

### Node Metrics Dashboard

![Node Metrics](docs/evidence/grafana-node-metrics.png)

### Pod Metrics Dashboard

![Pod Metrics](docs/evidence/grafana-pod-metrics.png)

---

## 🔧 Deployment Steps (Simplified)

### 1. Provision GKE Cluster

```bash
cd terraform
terraform init
terraform apply
```

---

### 2. Connect to Cluster

```bash
gcloud container clusters get-credentials observability-cluster \
  --zone europe-west2-a \
  --project cloud-observability-platform
```

---

### 3. Install Monitoring Stack

```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm install monitoring prometheus-community/kube-prometheus-stack \
  --namespace monitoring \
  --create-namespace
```

---

### 4. Access Grafana

```bash
kubectl port-forward svc/monitoring-grafana -n monitoring 3000:80
```

Open:

```
http://localhost:3000
```

---

## 📊 Outcome

* Fully functional Kubernetes observability platform
* Real-time metrics visualisation
* Infrastructure deployed as code
* Production-relevant monitoring stack

---

## 💡 What This Demonstrates

* Infrastructure as Code (Terraform)
* Kubernetes cluster provisioning
* Observability stack deployment
* Troubleshooting (quota, Helm failures, cluster state issues)
* Cost optimisation (minimal node sizing)

---

## 🔥 Key Learning

Handled real-world issues including:

* GCP quota limits
* Cluster state conflicts
* Helm install failures
* Resource tuning for cost control

---

## 👨‍💻 Author

Wilfred Ballo

