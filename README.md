# 🌐 Portfolio Website

![CI/CD](https://img.shields.io/badge/CI-CD-active-brightgreen)

## 📌 Description

This is a personal portfolio website built using React.
It showcases my profile, skills, projects, and work experience in a clean and modern interface.

This project also demonstrates my understanding of **CI/CD automation and VPS deployment** using GitHub Actions.

---

## 🛠️ Tech Stack

* React
* JavaScript
* HTML & CSS
* Nginx (production web server)
* CI/CD with GitHub Actions

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

```bash id="fy6kt3"
git clone https://github.com/secondbay/portofolio-website-react.git
cd portofolio-website-react
```

### 2. Install dependencies

```bash id="r4m3b3"
npm install
```

### 3. Run the app

```bash id="2lvtv6"
npm start
```

App will run on:

```id="nqqsl3"
http://localhost:3000
```

---

## 🔄 CI/CD Pipeline

This project uses **GitHub Actions** for automated deployment.

### 🚀 Workflow:

1. Code is pushed to the `main` branch
2. GitHub Actions pipeline is triggered
3. Connects to VPS via SSH
4. Pulls latest code from repository
5. Installs dependencies and builds the project
6. Reloads Nginx to serve the updated build

### ⚙️ Deployment Details:

* Automated deployment on every push to `main`
* Uses SSH authentication with encrypted secrets
* Ensures the production server is always in sync with the repository

### 📊 Status:

✅ CI/CD pipeline is active and successfully deploying updates

---

## 🌐 Deployment

The application is deployed on a VPS and served using Nginx.

---

## 🐳 Docker (Planned)

This project will be containerized using Docker with a multi-stage build approach (React build + Nginx for production).

---

## 📁 Project Structure

```id="0t3n6v"
project/
├── build/
├── node_modules/
├── public
├── src
LICENSE
README.md
package-lock.json
package.json
```

---

## 📸 Preview

(Add your website screenshot here)

---

## 👨‍💻 Author

**Ibnu Bayhaqi**

---

## 🚀 Future Improvements

* Add Docker support (multi-stage build)
* Implement zero-downtime deployment
* Optimize CI/CD pipeline
* Improve UI/UX design
