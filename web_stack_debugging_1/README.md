# Web Stack Debugging #1

## 0. Nginx likes port 80

This task is about debugging a containerized Ubuntu environment where the Nginx web server is not responding on port 80.

### 📌 Objective

Ensure that:
- Nginx is installed
- Nginx is running
- Nginx is listening on port 80 of all the server's active IPv4 interfaces

---

## 🛠️ File

- `0-nginx_likes_port_80`: Bash script that performs all required configurations to get Nginx running and listening on port 80.

---

## 📦 Usage

Run the following inside your container:

```bash
chmod +x 0-nginx_likes_port_80
./0-nginx_likes_port_80

