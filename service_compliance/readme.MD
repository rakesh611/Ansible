Let’s build a real-world compliance playbook using the service_facts module.
This will check if critical services (like sshd, firewalld, docker) are running and enabled, then report compliance results.
🔹 Explanation

Gather Facts → Collects service info (ansible_facts.services).

Compliance Check → Loops through the critical_services list and prints state & status.

If a service doesn’t exist, it shows not installed.

Fail on Non-Compliance → If any required service is not running, the play fails for that host.

Save Stats → Stores all service states into compliance_results for reporting.

🔹 Example Output (Non-Compliant Host)
TASK [Check compliance for critical services] ***
ok: [web01] => (item=sshd.service) => {
    "msg": "Service sshd.service is running and enabled on web01"
}
ok: [web01] => (item=firewalld.service) => {
    "msg": "Service firewalld.service is stopped and disabled on web01"
}
ok: [web01] => (item=docker.service) => {
    "msg": "Service docker.service is not installed and not installed on web01"
}

TASK [Fail if a critical service is not running] ***
fatal: [web01]: FAILED! => {
    "msg": "Critical service firewalld.service is NOT running on web01"
}
🔹 Why is this useful?

✅ Ensures all servers have required security/services running.
✅ Immediately fails on non-compliance → great for CIS benchmarks / audits.
✅ Can be integrated with CI/CD pipelines for automated infra compliance.
