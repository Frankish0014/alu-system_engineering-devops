# Web Stack Debugging #0

This project is an introduction to web stack debugging. The goal is to debug and fix issues with web servers running in Docker containers.

## Learning Objectives

At the end of this project, you should be able to:
- Understand basic Docker concepts
- Debug web server issues in containerized environments
- Fix Apache web server configuration problems
- Troubleshoot port mapping and service issues

## Concepts

- **Docker**: Containerization platform for packaging applications
- **Apache**: Popular web server software
- **Port mapping**: Connecting host ports to container ports
- **Web stack debugging**: Systematic approach to identifying and fixing web server issues

## Requirements

- All files will be interpreted on Ubuntu 14.04 LTS
- All files should end with a new line
- A README.md file, at the root of the folder of the project, is mandatory
- All Bash script files must be executable
- Your Bash script must pass Shellcheck without any error
- Your Bash script must run without error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what the script is doing

## Tasks

### 0. Give me a page!
**File**: `0-give_me_a_page`

Debug a Docker container running Apache that should return "Hello Holberton" when queried but is currently returning an empty reply.

**Problem**: 
- Docker container is running but `curl 0:8080` returns "Empty reply from server"
- Need Apache to serve a page containing "Hello Holberton"

**Solution**: The file contains the commands needed to fix the Apache configuration inside the Docker container.

**Expected behavior**:
```bash
# Before fix
curl 0:8080
# curl: (52) Empty reply from server

# After fix
curl 0:8080
# Hello Holberton
```

## Docker Container Info

- **Image**: `holbertonschool/265-0`
- **Port mapping**: 8080 (host) → 80 (container)
- **Web server**: Apache2
- **Document root**: `/var/www/html/`

## Debugging Process

1. Identify the problem (Apache not running or no content)
2. Create proper HTML content
3. Start the Apache service
4. Verify the fix works

## Resources

- [Docker concept page](https://intranet.alxswe.com/concepts/65)
- [Apache HTTP Server](https://httpd.apache.org/)
- [Docker documentation](https://docs.docker.com/)

## Author

ALU System Engineering & DevOps Project
