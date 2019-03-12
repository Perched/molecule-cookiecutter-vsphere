*******
vSphere template usage guide
*******

This repo provides a cookiecutter template that will allow you to initialize a test scenario using
`molecule`_ to connect to a vSphere server as a VM provider. Note, ESXi alone will not work because
this requires templates and the ability to clone VMs.

The `molecule.yml` file allows for multiple nodes listed in `platforms` with the usual convention of
defining group membership and inventory vars.

Requirements
============

* python >= 2.6
* PyVmomi
* Molecule >= 2.0
* Ansible >= 2.4

Usage
=======

.. code-block::bash
   
   $ molecule init --url gh:dcode/molecule-cookiecutter-vsphere

The `molecule`_ documentation doesn't cover this super well, but the above example will initialize
a test scenario for the options that you give it (it will prompt you).

.. _molecule: https://molecule.readthedocs.io/en/latest/

