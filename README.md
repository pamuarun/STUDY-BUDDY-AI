<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=250&section=header&text=Study%20Buddy%20AI&fontSize=80&animation=fadeIn&fontAlignY=35" alt="Header" />

<h1 align="center">Enterprise LLMOps & Generative AI Assessment Platform</h1>

<p align="center">
  <strong>Intelligent, Autonomous Quiz Generation & Orchestration Engine</strong><br>
  Built with <strong>LangChain</strong>, <strong>Groq LPUs</strong>, <strong>Streamlit</strong>, <strong>Kubernetes</strong>, and <strong>ArgoCD</strong>
</p>

<p align="center">
  <a href="https://www.python.org/"><img src="https://img.shields.io/badge/Python-3.10+-blue.svg?style=for-the-badge&logo=python&logoColor=white" alt="Python"></a>
  <a href="https://python.langchain.com/"><img src="https://img.shields.io/badge/LangChain-Integration-green.svg?style=for-the-badge&logo=langchain&logoColor=white" alt="LangChain"></a>
  <a href="https://groq.com/"><img src="https://img.shields.io/badge/Groq-LPU_Inference-f35b04.svg?style=for-the-badge&logo=groq&logoColor=white" alt="Groq"></a>
  <a href="https://streamlit.io/"><img src="https://img.shields.io/badge/Streamlit-UI/UX-FF4B4B.svg?style=for-the-badge&logo=streamlit&logoColor=white" alt="Streamlit"></a>
  <a href="https://www.docker.com/"><img src="https://img.shields.io/badge/Docker-Containerization-2496ED.svg?style=for-the-badge&logo=docker&logoColor=white" alt="Docker"></a>
  <a href="https://kubernetes.io/"><img src="https://img.shields.io/badge/Kubernetes-Orchestration-326CE5.svg?style=for-the-badge&logo=kubernetes&logoColor=white" alt="Kubernetes"></a>
  <a href="https://argo-cd.readthedocs.io/en/stable/"><img src="https://img.shields.io/badge/ArgoCD-GitOps-EF7B4D.svg?style=for-the-badge&logo=argo&logoColor=white" alt="ArgoCD"></a>
  <a href="https://www.jenkins.io/"><img src="https://img.shields.io/badge/Jenkins-CI/CD-D24939.svg?style=for-the-badge&logo=jenkins&logoColor=white" alt="Jenkins"></a>
</p>

<p align="center">
  <img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=500&size=20&pause=1000&color=2496ED&center=true&vCenter=true&width=600&lines=Enterprise-Grade+AI+Architecture;LangChain+%2B+Groq+LPU+Inference;Complete+GitOps+Deployment+Lifecycle;Kubernetes+Orchestration;Automated+LLMOps+Pipelines" alt="Typing SVG" />
</p>

<img src="https://profile-counter.glitch.me/STUDY-BUDDY-AI/count.svg" alt="Visitor Count" />

<hr>

</div>

## 📌 Executive Overview

**Study Buddy AI** is a state-of-the-art generative assessment engine engineered for high-throughput, dynamic educational content creation. It solves the critical bottleneck of manual test formulation by orchestrating complex Large Language Model (LLM) pipelines to autonomously generate, validate, and serve interactive assessments. 

Designed with an **Enterprise MLOps/LLMOps** mindset, the system is fully containerized, orchestrated via **Kubernetes**, and deployed using a strict **GitOps** paradigm. This ensures immutable infrastructure, absolute environment parity, and highly scalable inference capabilities.

**Enterprise Value Proposition:**
- ⚡ **Ultra-Low Latency Inference:** Utilizing Groq LPUs for real-time AI generation.
- 🔄 **Declarative GitOps Lifecycle:** ArgoCD ensures zero-configuration drift.
- 🛡️ **Bulletproof LLM Outputs:** Pydantic parsing guarantees structured, predictable AI payloads.

---

## 🚀 Professional Features

### 🧠 Generative AI & LLMOps Features
- **Advanced Agentic Routing:** Leverages **LangChain** to orchestrate dynamic prompt pipelines.
- **Strict Output Validation:** Utilizes `PydanticOutputParser` to enforce strict JSON schemas (`MCQQuestion`, `FillBlankQuestion`) preventing LLM hallucinations.
- **Autonomous Retry Mechanisms:** Built-in exponential backoff and error recovery for LLM inference failures (`_retry_and_parse` logic).
- **High-Speed Inference:** Integration with Groq's `llama-3.1-8b-instant` via LPUs for unparalleled token generation speed.

### ⚙️ DevOps & Cloud Infrastructure
- **GitOps Driven Deployment:** **ArgoCD** acts as the continuous deployment controller, watching the GitHub repository to automatically reconcile the state of the **Kubernetes** cluster.
- **CI/CD Automation:** Comprehensive **Jenkins** pipeline automating code checkout, Docker image builds, DockerHub registry pushes, and ArgoCD synchronization.
- **Immutable Infrastructure:** All deployment components (`deployment.yaml`, `service.yaml`) are version-controlled and applied declaratively.
- **Containerization Excellence:** Multi-stage optimized `python:3.10-slim` Dockerfiles reducing attack surface and footprint.

### 🔒 Security & Reliability Features
- **Secret Decoupling:** API keys are injected via Kubernetes `SecretKeyRef` preventing hardcoded credentials.
- **Stateless Architecture:** Designed for horizontal pod autoscaling (HPA) without session affinity constraints.
- **Robust Exception Handling:** Custom exception layers (`CustomException`) and centralized logging configurations.

---

## 🏛️ Advanced Architecture

### 1. AI Pipeline & Orchestration Workflow

```mermaid
graph TD
    classDef user fill:#2496ED,stroke:#fff,stroke-width:2px,color:#fff;
    classDef app fill:#FF4B4B,stroke:#fff,stroke-width:2px,color:#fff;
    classDef llm fill:#f35b04,stroke:#fff,stroke-width:2px,color:#fff;
    classDef logic fill:#00C853,stroke:#fff,stroke-width:2px,color:#fff;

    A[User UI Input]:::user -->|Topic, Difficulty, Type| B(Streamlit Interface):::app
    B --> C{QuestionGenerator}:::logic
    C -->|Format Template| D[LangChain PromptTemplate]:::logic
    D --> E[Groq LLM Client]:::llm
    E -->|LPU Inference| F[Raw String Output]:::llm
    F --> G{PydanticOutputParser}:::logic
    
    G -- Validation Failed --> H[Error Recovery / Retry Logic]:::logic
    H --> E
    
    G -- Schema Validated --> I[Structured Quiz Schema]:::logic
    I --> J[Quiz Manager Execution]:::logic
    J --> K[Interactive UI / CSV Export]:::app
```

### 2. Enterprise GitOps Deployment Topology

```mermaid
graph LR
    classDef repo fill:#181717,stroke:#fff,stroke-width:2px,color:#fff;
    classDef ci fill:#D24939,stroke:#fff,stroke-width:2px,color:#fff;
    classDef cd fill:#EF7B4D,stroke:#fff,stroke-width:2px,color:#fff;
    classDef k8s fill:#326CE5,stroke:#fff,stroke-width:2px,color:#fff;

    Dev[Engineer] -->|Git Push| Git[GitHub Repository]:::repo
    Git -->|Webhook| Jenkins[Jenkins CI Pipeline]:::ci
    
    subgraph Continuous Integration
    Jenkins -->|1. Build| Docker(Docker Image)
    Docker -->|2. Push| Hub[DockerHub Registry]
    end
    
    subgraph Continuous Deployment (GitOps)
    Argo[ArgoCD Controller]:::cd <-->|Polls State| Git
    Argo -->|Pulls Image| Hub
    Argo -->|Reconciles State| K8s[Kubernetes Cluster]:::k8s
    end
    
    subgraph Kubernetes Production
    K8s --> Deploy[Deployment: llmops-app]
    Deploy --> Pod1[Pod 1]
    Deploy --> Pod2[Pod 2]
    Deploy --> Secret[groq-api-secret]
    Pod1 & Pod2 --> Svc[Service: NodePort]
    end
```

---

## 🛠️ Engineering Deep Dive

### Architectural Decisions & Tradeoffs
1. **Pydantic Validation over Raw JSON:** We explicitly avoided asking the LLM to simply output JSON. Instead, LangChain's `PydanticOutputParser` injects format instructions into the prompt and validates the output strictly against `MCQQuestion` and `FillBlankQuestion` schemas. **Tradeoff:** Slightly higher token consumption for instructions, but eliminates application crashes due to malformed LLM responses.
2. **ArgoCD over Jenkins Deployments:** While Jenkins builds the Docker images, it *does not* run `kubectl apply`. ArgoCD is utilized as the source of truth, pulling the desired state from Git. This prevents configuration drift and allows for immediate rollback to previous commits.
3. **Groq LPU vs Traditional GPUs:** Selected Groq for the inference engine. Educational tools require high interactivity; Groq's Tensor Streaming Architecture provides the necessary tokens-per-second throughput to make generation feel instantaneous to the end-user.

---

## 📂 Professional Project Structure

```text
📦 STUDY-BUDDY-AI
┣ 📂 Architecture         # 📐 System design and workflow diagrams
┣ 📂 manifests            # ☸️ Kubernetes declarative configurations (GitOps)
┃ ┣ 📜 deployment.yaml    # 🚀 Application deployment (ReplicaSet, Pod specs)
┃ ┗ 📜 service.yaml       # 🌐 K8s Service definitions (NodePort exposure)
┣ 📂 src                  # 💻 Core Application & AI Logic
┃ ┣ 📂 common             # 🛠️ Shared enterprise utilities (Exceptions, Logger)
┃ ┣ 📂 config             # ⚙️ Environment variables & runtime settings
┃ ┣ 📂 generator          # 🧠 LangChain Prompt & Output Parsing orchestration
┃ ┣ 📂 llm                # 🔌 LLM Provider integrations (Groq Client wrapper)
┃ ┣ 📂 models             # 🛡️ Data validation schemas (Pydantic models)
┃ ┣ 📂 prompts            # 📝 Prompt Engineering (Few-shot, Instructions)
┃ ┗ 📂 utils              # 🧰 Application state management (QuizManager)
┣ 📜 application.py       # 🎨 Frontend orchestration (Streamlit entrypoint)
┣ 📜 Dockerfile           # 🐳 Multi-stage optimized container instructions
┣ 📜 Jenkinsfile          # 🏗️ Enterprise CI/CD Pipeline as Code
┗ 📜 requirements.txt     # 📦 Python dependency lockfile
```

---

## 🔌 API & Pipeline Documentation

### Internal Python API Interface
The system is built on a highly modular Python API, allowing seamless extraction of the backend for future microservice (FastAPI/Flask) deployments.

| Component | Method | Payload / Arguments | Response Schema |
|-----------|--------|---------------------|-----------------|
| **LLM Client** | `get_groq_llm()` | `api_key`, `model`, `temperature` | `ChatGroq` Instance |
| **Generator** | `generate_mcq()` | `topic: str`, `difficulty: str` | `MCQQuestion` (Pydantic) |
| **Generator** | `generate_fill_blank()` | `topic: str`, `difficulty: str` | `FillBlankQuestion` (Pydantic) |

### Strict Pydantic Data Models
```python
class MCQQuestion(BaseModel):
    question: str
    options: List[str] # Validated to strictly contain 4 elements
    correct_answer: str # Validated to exist within the options array
```

---

## 🔐 Security & Observability

### Security Posture
- **API Key Abstraction:** Keys are managed entirely outside the codebase using Kubernetes Secrets (`groq-api-secret`) mapped to environment variables inside the Pods.
- **Container Isolation:** The application runs inside an isolated Docker container, adhering to the principle of least privilege. 

### Observability Setup
- **Application Logging:** Python's standard `logging` library is implemented via a central `logger.py` utility, ensuring all LLM invocations, parser failures, and system states are piped to `stdout` for collection by aggregation tools (e.g., Fluentd, ELK, or Loki).
- **Pipeline Monitoring:** Jenkins captures real-time build telemetry and ArgoCD provides a visual dashboard for Kubernetes resource health, synchronization status, and drift detection.

---

## 🛳️ Deployment Guide

### 1. Local Containerized Deployment

```bash
# 1. Clone the repository
git clone https://github.com/pamuarun/STUDY-BUDDY-AI.git
cd STUDY-BUDDY-AI

# 2. Build the Docker Image
docker build -t studybuddy:local .

# 3. Run the container with environment variables
docker run -p 8501:8501 -e GROQ_API_KEY="your_api_key" studybuddy:local
```

### 2. Production Kubernetes & GitOps Deployment

This repository is built for production environments via Google Cloud Platform (GCP) and Minikube/GKE. 

1. **Secret Provisioning:**
   ```bash
   kubectl create secret generic groq-api-secret \
     --from-literal=GROQ_API_KEY="your-groq-key" \
     -n default
   ```
2. **Apply Manifests (Manual Trigger):**
   ```bash
   kubectl apply -f manifests/deployment.yaml
   kubectl apply -f manifests/service.yaml
   ```
3. **GitOps Trigger (Automated):**
   Simply commit changes to the `main` branch. The Jenkins pipeline will build and push the new Docker image, and ArgoCD will automatically detect the new image tag/manifests and reconcile the cluster.

> **💡 Detailed Infrastructure Setup:** For comprehensive instructions on standing up the VM, Minikube, Jenkins DIND, and ArgoCD, refer to the exhaustive [**FULL_DOCUMENTATION.md**](FULL_DOCUMENTATION.md) included in this repository.

---

## 📸 Enterprise Dashboards (Placeholders)

<div align="center">
  <table>
    <tr>
      <td align="center"><b>ArgoCD Synchronization Dashboard</b></td>
      <td align="center"><b>Streamlit Interactive UI</b></td>
    </tr>
    <tr>
      <td><img src="https://via.placeholder.com/400x250/24292e/ffffff?text=ArgoCD+GitOps+Dashboard" alt="ArgoCD"></td>
      <td><img src="https://via.placeholder.com/400x250/ffffff/24292e?text=Study+Buddy+AI+Interface" alt="Streamlit UI"></td>
    </tr>
    <tr>
      <td align="center"><b>Jenkins CI/CD Pipeline</b></td>
      <td align="center"><b>Kubernetes Cluster Health</b></td>
    </tr>
    <tr>
      <td><img src="https://via.placeholder.com/400x250/D24939/ffffff?text=Jenkins+Pipeline+Stages" alt="Jenkins"></td>
      <td><img src="https://via.placeholder.com/400x250/326CE5/ffffff?text=K8s+Pod+Metrics" alt="K8s Metrics"></td>
    </tr>
  </table>
</div>

---

<div align="center">
  <p>Engineered with ❤️ for seamless learning and AI architecture.</p>
  <a href="https://github.com/pamuarun/STUDY-BUDDY-AI.git"><strong>Return to Repository</strong></a>
</div>
