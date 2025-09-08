Let’s create a real-world playbook that uses the service module to dynamically manage multiple critical services on multiple hosts, with reporting and auto-fix.

🔹 How It Works

Gather service facts → Gets current state of all services.

Install packages → Makes sure required service packages exist.

Start & enable services → Ensures each critical service is running and enabled.

Report status → Uses debug to show current service state dynamically.

Record managed services → Saves which services were acted upon in managed_services fact.

🔹 Example Output
TASK [Report final service status] ***
ok: [web01] => (item=sshd) => {
    "msg": "Service sshd on web01 is now running"
}
ok: [web01] => (item=firewalld) => {
    "msg": "Service firewalld on web01 is now running"
}
ok: [web01] => (item=docker) => {
    "msg": "Service docker on web01 is now running"
}
ok: [web01] => (item=nginx) => {
    "msg": "Service nginx on web01 is now running"
}

TASK [Display managed services] ***
ok: [web01] => {
    "msg": "Managed services on web01: ['sshd', 'firewalld', 'docker', 'nginx']"
}


🔹 Benefits

Dynamically handles multiple services across hosts.

Automatically fixes stopped/missing services.

Stores info for reporting or external integration (Slack, dashboards).

Works on RHEL/Debian/CentOS etc.
