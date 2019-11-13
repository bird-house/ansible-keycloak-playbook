=========================
Keycloak Ansible Playbook
=========================

.. admonition:: Description

  Use Ansible_ to deploy a Keycloak_ service.

.. warning::

  This playbook is under development.

This playbook is based on https://github.com/pmarek-stfc/Ansible-Keycloak-Playbook

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

Demo Instance
=============

This playbook installs a keycloak service which as available at:
http://localhost:8080/auth/

You can log-in to the administrator console with `username=admin`, `password=admin`:
http://localhost:8080/auth/admin

It set-ups a demo realm with a demo user:

* client-id: demo
* client-secret: c083d72c-a262-40b1-ad51-326f6977d74b
* OAuth2 workflow: `client credentials`_

.. _Keycloak: https://www.keycloak.org/
.. _Ansible: https://www.ansible.com/
.. _Vagrant: https://www.vagrantup.com/
.. _`client credentials`: https://requests-oauthlib.readthedocs.io/en/latest/oauth2_workflow.html#backend-application-flow
