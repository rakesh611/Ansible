it collects both configs + logs into a centralized folder on the Ansible control node.
collect_configs/
├── playbook.yml
├── roles/
│   └── collect/
│       ├── tasks/
│       │   └── main.yml

🔹 What Happens When You Run It?
On the control node, you’ll get:
collected/
├── server1/
│   ├── etc_hosts.txt
│   ├── etc_passwd.txt
│   ├── messages.log
│   └── syslog.log
├── server2/
│   ├── etc_hosts.txt
│   ├── etc_passwd.txt
│   ├── messages.log
│   └── syslog.log
✅ Works across both RedHat/CentOS (uses /var/log/messages) and Debian/Ubuntu (uses /var/log/syslog).
✅ Keeps logs + configs separated per host.
✅ You can easily extend it by adding more slurp tasks (e.g., /etc/fstab, /etc/ssh/sshd_config).
