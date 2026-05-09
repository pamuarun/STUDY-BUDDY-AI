# Study Buddy AI

[![Python](https://img.shields.io/badge/Python-3.14-blue.svg)](https://www.python.org/downloads/release/python-314/)
[![Streamlit](https://img.shields.io/badge/Streamlit-1.57.0-FF4B4B.svg)](https://streamlit.io/)
[![LangChain](https://img.shields.io/badge/LangChain-Integration-green.svg)](https://python.langchain.com/)
[![Docker](https://img.shields.io/badge/Docker-Enabled-blue.svg)](https://www.docker.com/)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-GKE-326CE5.svg)](https://kubernetes.io/)

**Study Buddy AI** is an intelligent, AI-powered quiz generation and learning platform designed to help students and professionals test their knowledge on various topics. Built with a modern tech stack, the application dynamically generates customizable quizzes (Multiple Choice and Fill in the Blank) based on user-provided topics and difficulty levels. It evaluates responses in real-time, provides immediate feedback with correct answers, and allows users to download their performance results as a CSV file.

The application leverages **LangChain** and **Groq** for rapid, high-quality question generation and utilizes **Streamlit** for an intuitive, interactive user interface. Beyond the application itself, this project features a robust **GitOps/MLOps pipeline**, utilizing **Docker**, **Jenkins**, **ArgoCD**, and **Kubernetes** deployed on **Google Cloud Platform (GCP)** to ensure automated builds, seamless continuous integration, and continuous deployment (CI/CD).

## 🏛️ Architecture

![Architecture Diagram](Architecture/Study%20Buddy%20AI%20Workflow.png)

## 🛠️ Tech Stack

- **Frontend & App Framework:** [Streamlit](https://streamlit.io/) (v1.57.0)
- **AI & LLM Integration:** [LangChain](https://python.langchain.com/) (v1.2.17) & Langchain-Groq (v1.1.2)
- **Data Handling:** Pandas
- **Containerization:** Docker
- **Orchestration & Deployment:** Kubernetes (Minikube), Google Cloud Platform (GCP) VMs
- **CI/CD & GitOps:** Jenkins, ArgoCD
- **Version Control:** GitHub

## 📂 Project Structure

```text
├── Architecture/                 # Architecture diagrams
├── src/                          # Source code for the application
│   ├── common/                   # Common utilities
│   ├── config/                   # Configuration management
│   ├── generator/                # Quiz question generators
│   ├── llm/                      # LLM integration (Groq)
│   ├── models/                   # Data models
│   ├── prompts/                  # Prompt templates
│   └── utils/                    # Helper functions
├── application.py                # Main Streamlit application entry point
├── requirements.txt              # Python dependencies
├── Dockerfile                    # Docker image configuration
├── Jenkinsfile                   # Jenkins CI/CD pipeline definition
├── manifests/                    # Kubernetes deployment and service YAMLs
└── FULL_DOCUMENTATION.md         # Comprehensive setup and deployment guide
```

## 🚀 Quick Start (Local Setup)

To run the application locally without the Kubernetes pipeline:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/pamuarun/STUDY-BUDDY-AI.git
   cd STUDY-BUDDY-AI
   ```

2. **Set up virtual environment & install dependencies:**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   pip install -r requirements.txt
   ```

3. **Configure Environment Variables:**
   Create a `.env` file in the root directory and add your Groq API key:
   ```env
   GROQ_API_KEY=your_groq_api_key_here
   ```

4. **Run the Application:**
   ```bash
   streamlit run application.py
   ```

## 📖 Comprehensive GitOps & Kubernetes Deployment

> **⚠️ NOTE:** A highly detailed, step-by-step documentation for deploying this application using a complete GitOps workflow is available in the [`FULL_DOCUMENTATION.md`](FULL_DOCUMENTATION.md) file.

The `FULL_DOCUMENTATION.md` covers:
- Setting up a Google Cloud Platform (GCP) VM Instance.
- Installing and configuring Docker and Minikube.
- Running Jenkins in Docker (DIND) and setting up automated CI pipelines.
- Building and pushing Docker images to DockerHub.
- Installing ArgoCD and configuring it to sync with the GitHub repository for Continuous Deployment.
- Managing Kubernetes secrets and accessing the application via port-forwarding.

Please refer to [`FULL_DOCUMENTATION.md`](FULL_DOCUMENTATION.md) for the complete infrastructure and deployment guide.

## 🔗 Repository
[https://github.com/pamuarun/STUDY-BUDDY-AI.git](https://github.com/pamuarun/STUDY-BUDDY-AI.git)
