# 🐧 Mission D2 — Getting Started with Docker in WSL

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

# 🚨 MISSION D2 — CHALLENGE: Setup a Web Server Like a Pro

## 🎯 Objective

You have successfully deployed a Linux container with SSH access.

Now, it’s time to prove your ability to work like a real sysadmin:  
You must transform this container into a functional **web server environment**.

---

## 🧪 Context

You’ve connected to a lightweight Linux system inside a Docker container.  
It’s your job to:

- Identify the Linux distribution and package manager
- Investigate which services are running
- Install and configure the necessary tools to serve a working PHP site with database access

---

## 📌 Your Mission

> Without using ChatGPT or any AI-based tools, complete the following objectives:

1. **Identify the OS and version**:

   - Determine which Linux distribution you're working on.
   - Find out what package manager is available (and which version).

2. **Install the following services**:

   - A **web server** (Apache or Nginx)
   - A **PHP interpreter** that works with your web server
   - A **MariaDB** (or MySQL-compatible) database server
   - **phpMyAdmin**, accessible via the browser on port 80

3. **Verify integration**:
   - Your Apache/Nginx must render PHP files properly.
   - phpMyAdmin must be reachable via browser (e.g. `http://localhost:8080/phpmyadmin`)
   - phpMyAdmin must connect to MariaDB without error.

---

## 🔒 The Twist

> 🧩 A system lock has been introduced in your container.

You may encounter a **locked or broken package manager**, or some unusual configuration behavior. It is your job to:

- Detect the problem
- Identify the cause
- Apply a workaround or fix
- Document what you changed

**Hint**: Real-life operations are rarely clean or easy. That’s what makes you valuable.

---

## 📂 Submission

Prepare a `solution.md` file that includes:

- Steps you followed
- The final working configuration (basic commands and file changes)
- Screenshots or command outputs proving it works
- A short paragraph: “What I learned from this challenge”

---

## 🧠 Rules

- ❌ **Do NOT use ChatGPT, Bard, Copilot, or any AI.**
- ✅ **Use only man pages, official documentation, Stack Overflow, forums, or error logs.**
- ✅ You can test, break, debug, try again — that's the point.

---

## 💬 Bonus

If you document a creative workaround or solve the lock in a clever way, you’ll get bonus points and shout-outs in class.

---

Ready?  
SSH into the container, and let the real hacking begin 💻
