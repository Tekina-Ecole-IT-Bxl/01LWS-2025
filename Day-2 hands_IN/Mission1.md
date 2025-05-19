# 🐧 Mission 1 - D2 — Getting Started with Docker in WSL

## 🎯 Objective

In this mission, you will learn how to:

- Start your Linux environment via WSL
- Install Git
- Clone a provided repository
- Navigate through a structured folder
- Grant script execution rights
- Run a Docker-based container with SSH access

---

## 🧭 Step-by-step Instructions

### 1. 🧨 Start your Linux terminal

Open **PowerShell** and run the following command to launch your Debian WSL environment:

```
wsl -d Dbn
```

> ⚠️ Make sure `Dbn` starts with a **capital D**.

---

### 2. 📁 Return to your working folder

Once inside the Linux terminal, navigate back to your working folder:

```
cd ~
```

Or use the full path to your folder if necessary.

---

### 3. 🛠️ Install Git

If Git is not already installed, install it by running:

```
sudo apt update
sudo apt install git -y
```

---

### 4. 🔁 Clone the repository

Clone the repository provided by your instructor:

```
git clone https://github.com/Tekina-Ecole-IT-Bxl/01LWS-2025
```

Replace the URL above if a different repository is provided.

---

### 5. 🚶‍♂️ Navigate to the mission folder

Enter the cloned directory, then go to:

```
cd docker-training/01wls/D2/mission
```

---

### 6. 🔐 Make the script executable

Grant execution permissions to the script file:

```
chmod +x run.sh
```

---

### 7. 🚀 Run the script

Execute the script:

```
./run.sh
```

This will:

- Build the Docker image
- Start a container with SSH access
- Output instructions to connect via SSH

---

### ✅ Connect to your container

Once the container is running, connect to it using:

```
ssh root@localhost -p 2222
```

Password:

```
root
```

---
