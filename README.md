# Ansible Role: ansible_role_neofetch

![Ansible](https://img.shields.io/badge/ansible-ready-blue.svg)
![Platform](https://img.shields.io/badge/platform-Ubuntu-lightgrey)
![License](https://img.shields.io/badge/license-Unlicense-green)

## Description

This Ansible role installs **neofetch** on Ubuntu systems and configures it to display system information automatically on user login via a shell script in `/etc/profile.d`.
**Neofetch** is a command-line system information tool written in Bash, often used to display system details in a visually appealing way when a terminal session starts.

### Features:
- Installs the `neofetch` package from the official repositories
- Deploys a login script to `/etc/profile.d/neofetch.sh`
- Deploys a global Neofetch configuration (`config.conf`) to `/etc/neofetch/` for consistent appearance across all users

## Role Variables

This role does not require any custom variables for standard operation.  
All configuration is static and targeted for minimal, reliable usage.

## Usage Example

```yaml
- name: Install and configure neofetch
  hosts: all
  become: true
  roles:
    - role: ansible_role_neofetch
```

## Sanity Checks

This role ensures:
- `neofetch` is installed and available system-wide
- `/etc/profile.d/neofetch.sh` is present, executable, and owned by `root`
- The script is run automatically at login for interactive shells
- `/etc/neofetch/config.conf` is present and readable by all users

## Directory Structure

Follows standard Ansible role layout:

```
ansible_role_neofetch/
├── files/
│   ├── neofetch.sh
│   └── config.conf
├── tasks/
│   └── main.yml
└── README.md
```

✔️ Lightweight role to enhance CLI user experience with system details at login.

## License

Unlicense

## Author Information

Role maintained by Max Bergmann.  
Feedback, suggestions, and contributions are always welcome! 🚀
