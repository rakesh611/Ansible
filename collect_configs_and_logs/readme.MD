We’ll create a role that collects important system configs (like /etc/hosts, /etc/passwd) from all servers and saves them to the Ansible controller.
🔹 Project Structure
collect_configs_and_logs/
├── playbook.yml
├── roles/
│   └── collect/
│       ├── tasks/
│       │   └── main.yml
│       └── files/   (not used, but kept for role structure)


🔹 What Happens When You Run It?
Ansible connects to each server.
Reads /etc/hosts and /etc/passwd (as base64).
Decodes and writes them locally into ./collected/<hostname>/.
Example output on controller:

collected/
├── server1/
│   ├── etc_hosts.txt
│   └── etc_passwd.txt
├── server2/
│   ├── etc_hosts.txt
│   └── etc_passwd.txt

🔹 Real-World Use Cases

✅ Centralized audit of configs.
✅ Backup before patching.
✅ Compliance checks across servers.
