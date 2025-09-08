create a full Ansible playbook that dynamically adds multiple RPM GPG keys and then configures the corresponding YUM repositories for multiple hosts.

🔹 How It Works
Define repos → Each repository includes:
name: repo name
baseurl: repo URL
gpgkey: local file or remote URL of the GPG key
Add RPM keys → Uses rpm_key module for each repo.
Configure YUM repositories → Uses yum_repository module to enable repos and attach GPG keys.
Verify repositories → Runs yum repolist to check if repos are active.
Report results → Shows the output of yum repolist for confirmation.

🔹 Example Output
TASK [Add RPM GPG keys] ***
ok: [web01] => (item=epel)
ok: [web01] => (item=myrepo)

TASK [Configure YUM repositories] ***
ok: [web01] => (item=epel)
ok: [web01] => (item=myrepo)

TASK [Show added repositories] ***
ok: [web01] => {
    "msg": "repo id      repo name                          status
           epel         Ephemeral Extra Packages for Linux  enabled
           myrepo       Myrepo Repository                 enabled"
}
✅ This setup ensures that all RPM keys and repos are added safely and dynamically.
✅ Can be extended for any number of repos just by updating the repos variable.
