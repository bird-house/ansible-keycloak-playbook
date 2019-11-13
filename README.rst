=========================
Keycloak Ansible Playbook
=========================

.. admonition:: Description

  Use Ansible_ to deploy a Keycloak_ service.

.. warning::

  This playbook is under development.

Introduction
============

Keycloak Ansible Playbook can provision a remote server to run Keycloak_.

Prepare
=======

To test this Ansible script you can use Vagrant_.
On macOS install Vagrant and Ansible::

  $ brew cask install virtualbox
  $ brew cask install vagrant
  $ brew install ansible

You need to fetch the depending external roles::

  $ ansible-galaxy install -p roles -r requirements.yml
  OR
  $ make roles

Run playbook with Vagrant
=========================

Initial setup::

  $ vagrant up

Provision with Ansible again::

  $ vagrant provision

Login with SSH::

  $ vagrant ssh

Remove VMs::

  $ vagrant destroy -f

.. _Keycloak: https://www.keycloak.org/
.. _Ansible: https://www.ansible.com/
.. _Vagrant: https://www.vagrantup.com/
