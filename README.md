# Ansible Role: Install dotdeb

[![Build Status](https://travis-ci.org/tschifftner/ansible-role-dotdeb.svg)](https://travis-ci.org/tschifftner/ansible-role-dotdeb)

Installs dotdeb from source on Debian/Ubuntu linux servers.

## Requirements

ansible 1.8+

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

```
dotdeb_install_repositories: Yes

dotdeb_apt_key: 'http://www.dotdeb.org/dotdeb.gpg'

dotdeb_apt_repositories:
 - 'deb http://packages.dotdeb.org {{ ansible_distribution_release }} all'
 - 'deb-src http://packages.dotdeb.org {{ ansible_distribution_release }} all'
```

## Dependencies

None.

## Installation

```
$ ansible-galaxy install tschifftner.dotdeb
```

## Example Playbook

    - hosts: server
      roles:
        - { role: tschifftner.dotdeb }

## Supported OS
Ansible          | Debian Jessie    | Ubuntu 14.04*
:--------------: | :--------------: | :-------------:
1.8              | Yes              | Yes
1.9              | Yes              | Yes

*) The packages from Dotdeb should work on Ubuntu, but no additional support will be provided.

## License

MIT / BSD

## Author Information

 - Tobias Schifftner, @tschifftner