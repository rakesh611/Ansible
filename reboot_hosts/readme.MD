reboots multiple hosts, waits for them to come back online, and reports success/failure.
🔹 How It Works
Reboot each host → Using the reboot module with pre/post delays.
Record reboot success/failure → Registers result in reboot_report fact.
Wait for host connection → Using wait_for_connection to ensure SSH is ready.
Update the report → Marks the host as Success or Failed depending on reboot & connection result.
Display report → Shows structured reboot status for all hosts.

🔹 Example Output
ok: [web01] => {
    "reboot_report": {
        "web01": "Success",
        "db01": "Success",
        "cache01": "Failed"
    }
}

✅ Provides a clear summary of which hosts rebooted successfully and which failed.
✅ Safe for automation pipelines: handles delays, waits for connection, and records results.
