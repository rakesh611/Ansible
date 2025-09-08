service compliance playbook so that instead of just failing on non-compliance, 
it will auto-remediate by installing and starting services that are missing or stopped.
🔹 Explanation

Gather service facts → Collects current states of all services.

Install missing packages → Uses package module to ensure service packages are present.

Start & enable services → Ensures each service is running and enabled at boot.

Report results → Prints the final state after remediation.

Save compliance stats → Saves list of services that were remediated.
🔹 Example Run (Host Missing firewalld & docker)
TASK [Ensure critical packages are installed] ***
changed: [web01] => (item=firewalld)
changed: [web01] => (item=docker)
ok: [web01] => (item=sshd)

TASK [Ensure critical services are started and enabled] ***
changed: [web01] => (item=firewalld)
changed: [web01] => (item=docker)
ok: [web01] => (item=sshd)

TASK [Report compliance status after fixes] ***
ok: [web01] => (item=sshd) => {
    "msg": "Service sshd final state: running on web01"
}
ok: [web01] => (item=firewalld) => {
    "msg": "Service firewalld final state: running on web01"
}
ok: [web01] => (item=docker) => {
    "msg": "Service docker final state: running on web01"
}

✅ Now instead of failing, it self-heals missing or stopped services.
✅ Useful for automated hardening and self-healing infrastructure.
