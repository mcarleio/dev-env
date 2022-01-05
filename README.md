# dev-env
With the help of this repository, I setup and update my development environment.

## Requirements
Install ansible (min. ansible-playbook version 2.10.16).

```
# Fedora
sudo dnf install python3-pip
pip install ansible

# Ubuntu
sudo apt install ansible

# Manjaro
sudo pamac install ansible
```

## Run it
After you successfully setup all requirements, you can run the following commands:

* To do a complete setup

      ansible-playbook -vK setup_tools.yml

## Target distros
This repository was tested and developed for usage with Manjaro, Fedora and Ubuntu.

## Manual Testing with `gnome-boxes`

Install `spice-webdavd` in guest to have shared folder functionality:
```
# Fedora Guest
sudo dnf install spice-webdavd

# Ubuntu Guest
sudo apt install spice-webdavd

# Manjaro Guest
sudo pamac install spice-\*
```
