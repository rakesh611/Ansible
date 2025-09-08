🔹 Role: myapp

This role will:

Copy application files.

Create a systemd unit file for the app.

Reload systemd daemon.

Enable + start the service.

myapp/
    ├── files/
    │   └── myapp.sh
    ├── templates/
    │   └── myapp.service.j2
    ├── tasks/
    │   └── main.yml
    ├── defaults/
    │   └── main.yml


🔹 What This Role Does

Creates a dedicated user (myapp).

Places the script at /opt/myapp/myapp.sh.

Creates a systemd service file (/etc/systemd/system/myapp.service).

Reloads systemd.

Starts + enables the service at boot.

The app will now continuously log to /var/log/myapp.log.


