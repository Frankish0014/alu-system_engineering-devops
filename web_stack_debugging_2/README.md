# Web Stack Debugging #2

## Project Overview

This project focuses on web stack debugging and system administration concepts, particularly user privilege management and command execution as different users in Linux systems.

## Background

The `root` user in Linux is the "superuser" with unlimited privileges. While powerful, this can be dangerous - a single mistyped command like `rm -rf /` could destroy the entire filesystem. Best practices recommend:

- Never logging in directly as `root` for daily tasks
- Using privileged users who can execute root commands when needed
- Utilizing specific commands to run tasks as different users safely

## Project Structure

```
web_stack_debugging_2/
├── README.md
└── 0-iamsomeoneelse
```

## Files

### 0-iamsomeoneelse

A Bash script that demonstrates running commands as different users while maintaining root privileges.

**Requirements:**
- Accepts one argument (username)
- Runs the `whoami` command as the specified user
- Works from a root environment

**Usage:**
```bash
chmod +x 0-iamsomeoneelse
./0-iamsomeoneelse [username]
```

**Example:**
```bash
root@ubuntu:~# whoami
root
root@ubuntu:~# ./0-iamsomeoneelse www-data
www-data
root@ubuntu:~# whoami
root
```

## Key Concepts

### User Switching Commands

- **`sudo -u username command`**: Execute command as specified user
- **`su -c "command" username`**: Substitute user and run command
- Both methods allow root to execute commands as other users without changing the current session

### Security Implications

- Running as root provides unlimited system access
- Container environments often run as root by default
- Understanding user switching is crucial for system security and debugging

## Learning Objectives

- Understand Linux user privilege systems
- Learn safe command execution as different users
- Practice system administration and debugging techniques
- Develop awareness of security best practices

## Repository Information

- **GitHub repository**: `alu-system_engineering-devops`
- **Directory**: `web_stack_debugging_2`
- **Environment**: Ubuntu/Linux containers running as root user

## Testing

Test the script with various system users:
- `www-data` (web server user)
- `nobody` (minimal privilege user)
- `daemon` (system daemon user)
- Any valid system user

## Notes

This project is designed for educational purposes in containerized environments where root access is available for learning system administration concepts safely.
