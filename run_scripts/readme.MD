create a real-world playbook using the script module that runs multiple scripts on multiple hosts and provides reporting using set_fact and debug.
# 🔹 Scenario
You have multiple maintenance scripts on the control node:
cleanup_logs.sh → Cleans old logs
check_disk.sh → Checks disk usage
update_packages.sh → Updates system packages
The playbook will:
Run each script on remote hosts.
Collect output.
Report success/failure for each script per host.

🔹 How It Works
Initialize script_results fact → Empty dictionary to store results.
Run scripts with script module → Loops through all scripts, captures output.
Save results to script_results → Each script’s stdout, stderr, and return code (rc) are saved.
Display results → Shows which scripts succeeded or failed per host.

🔹 Example Output
ok: [web01] => {
    "script_results": {
        "cleanup_logs.sh": {
            "stdout": "Old logs deleted",
            "stderr": "",
            "rc": 0
        },
        "check_disk.sh": {
            "stdout": "Disk usage: 45%",
            "stderr": "",
            "rc": 0
        },
        "update_packages.sh": {
            "stdout": "All packages up to date",
            "stderr": "",
            "rc": 0
        }
    }
}

✅ Now you have a structured report of script execution per host.
✅ Can easily integrate with Slack, email, or dashboards using uri module for notifications.
