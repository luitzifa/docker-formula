======
docker
======

Install docker.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``docker``
-------

Install and start docker. Includes docker.repo if pillar docker_settings.fromupstream is set.

``docker.repo``
-------

Just configure the repo, even if pillar docker_settings.fromupstream is not set.

TODO
====

* Test Ubuntu, Arch, Gentoo, Centos
* Support Suse
* Write automate tests
* Support for Docker environment variables for e.g. switch bridge subnet
* Optimize systemd-integration for e.g. MaxTasks
* Support for Systems without upstream repositories
