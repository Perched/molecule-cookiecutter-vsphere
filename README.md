# vSphere template usage guide

This repo provides a cookiecutter template that will allow you to initialize a test scenario using
[molecule][molecule_docs] to connect to a vSphere server as a VM provider. Note, ESXi alone will not
work because this requires templates and the ability to clone VMs.

The `molecule.yml` file allows for multiple nodes listed in `platforms` with the usual convention of
defining group membership and inventory vars.

Requirements
============

* python >= 2.6
* PyVmomi
* Molecule >= 2.0
* Ansible >= 2.4
* sshpass (installed command)
* rsync   (installed command)

Usage
=======

```bash   
molecule init --url gh:dcode/molecule-cookiecutter-vsphere

# Edit molecule/default/molecule.yml to your needs
# Edit molecule/default/create.yml to change the `ssh_user` and `ssh_pass` until I find a fix
# Add testinfra tests to molecule/default/tests dir

molecule test
```

The [molecule documentation][molecule_docs] doesn't cover this super well, but
the above example will initialize a test scenario for the options that you give
it (it will prompt you).

[molecule_docs]: https://molecule.readthedocs.io/en/latest/
