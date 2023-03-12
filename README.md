# R4Pi Ansible tooling

The ansible scripts used to manage the build servers.

## The buildberries

There are currently 3 classes of system:

* `rbuilders`
  - Those that build R itself
* `pkgbuilders`
  - Those that build R packages
* `buildprimary`
  - Those that are used for essential ancilliary tasks like managing the debian repo

The ansible playbooks are arranged by these roles, but with an additional
`common_tools` configuration that's applied to all ansible managed hosts.

## Running the playbooks

```bash
ansible-playbook site.yml
```

Run a specific playbook by specifying it's name, eg:

```bash
ansible-playbook.yml buildprimary.yml
```

## Useful SSH notes

Run a local ssh-agent via the command line with:

```bash
eval `ssh-agent`
```

Then add the local key:

```bash
ssh-add
```

Copy a local key to a remote server with:

```bash
ssh-copy-id -i ~/.ssh/mykey user@host
```
