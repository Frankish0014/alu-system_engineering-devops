# Web Server

This project covers web server configuration and automation tasks using Bash scripting. The focus is on automating server setup and configuration tasks that can be applied to multiple servers without manual intervention.

## Learning Objectives

At the end of this project, you should be able to explain:

### General
- What is the main role of a web server
- What is a child process
- Why web servers usually have a parent process and child processes
- What are the main HTTP requests

### DNS
- What DNS stands for
- What is DNS main role
- DNS Record Types: A, CNAME, TXT, MX

## Requirements

- All files interpreted on Ubuntu 16.04 LTS
- All files should end with a new line
- All Bash script files must be executable
- Bash scripts must pass Shellcheck (version 0.3.7) without any error
- First line of all Bash scripts: `#!/usr/bin/env bash`
- Second line should be a comment explaining what the script does
- Cannot use `systemctl` for restarting processes

## Server Information

- **Server**: 6624-web-01
- **Username**: ubuntu
- **IP**: 3.82.106.100
- **State**: running

## Tasks

### 0. Transfer a file to your server
**File**: `0-transfer_file`

Bash script that transfers a file from client to server using scp.

**Usage**: `./0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY`

**Requirements**:
- Accepts 4 parameters
- Displays usage message if less than 4 parameters
- Uses scp to transfer file to user home directory
- Disables strict host key checking

## Resources

- [How the web works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)
- [Nginx Documentation](https://nginx.org/en/docs/)
- [HTTP requests](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods)
- [DNS basics](https://www.cloudflare.com/learning/dns/what-is-dns/)

## Author

ALU System Engineering & DevOps Project
