# 🌐 Portfolio Website

## 📌 Description

This is a personal portfolio website built using React. It showcases my profile, skills, projects, and work experience in a clean and modern interface.

This project also demonstrates my understanding of modern DevOps practices, including **CI/CD automation, Docker containerization, and VPS deployment using GitHub Actions**.

---

## 🛠️ Tech Stack

* React
* JavaScript
* HTML & CSS
* Nginx (Production Web Server)
* Docker (Multi-stage build)
* GitHub Actions (CI/CD)
* VPS (Deployment Server)

---

## ✨ Features

* 🏠 Home section
* 👤 About Me
* 📁 Projects showcase
* 🧠 Skills overview
* 💼 Work Experience

---

## ⚙️ How to Run Locally

### 1. Clone the repository

```bash
git clone https://github.com/secondbay/portofolio-website-react.git
cd portofolio-website-react
```

### 2. Install dependencies

```bash
npm install
```

### 3. Run the app

```bash
npm start
```

App will run on:

```
http://localhost:3000
```

---

## 🐳 Run with Docker (Recommended)

### Build Docker Image

```bash
docker build -t portofolio-react .
```

### Run Container

```bash
docker run -d -p 3000:80 --name portofolio portofolio-react
```

Access the app:

```
http://localhost:3000
```

---

## 🔄 CI/CD Pipeline

This project uses GitHub Actions for automated deployment with a modern DevOps workflow.

### 🚀 Workflow:

1. Code is pushed to the `main` branch
2. GitHub Actions builds Docker image
3. Image is exported to `.tar` file
4. File is securely transferred to VPS via SSH
5. VPS loads Docker image
6. Container is automatically deployed

---

## ⚙️ Deployment Details

* Automated deployment on every push to `main`
* Docker-based deployment (no build on VPS)
* Uses SSH authentication with GitHub Secrets
* Lightweight VPS execution (run container only)

---

## 📊 Status

✅ CI/CD pipeline active
✅ Dockerized deployment
✅ Successfully deployed to VPS

---

## 🌐 Live Deployment

The application is deployed on a VPS and served using Nginx inside a Docker container.

```
http://YOUR-VPS-IP:3000
```

---

## 📁 Project Structure

```
project/
├── build/
├── public/
├── src/
├── Dockerfile
├── nginx.conf
├── package.json
├── package-lock.json
└── README.md
```

---

## 📸 Preview

(Add your website screenshot here)

---

## 👨‍💻 Author

**Ibnu Bayhaqi**

---
