# personal-autosetup-fedora

## Disclaimer

As "personal" in the project name suggests, this repository is originally designed for my personal use only.
However this projects could very well be used as a template for anyone else.
The script is meant to be run on a fresh install of the latest Fedora KDE spin but may very well also work on other Fedora systems and could even be adapter for other distributions.

## The project

This repository contains an Ansible script to automatically set up my desired Linux environment.
It handels packages, Flatpacks, configuration files and many other things while still trying to be easy to use.
I use it to keep the configuration of all my systems in sync.

## Usage

1. Install the latest Fedora KDE spin
1. `dnf install ansible git`
1. `git clone https://github.com/Timon-Schwarz/personal-autosetup-fedora.git`
1. `cd personal-autosetup-fedora`
1. `ansible-playbook local.yml --ask-become-pass`
1. Now follow the instructions on screen.

### Skipping questions

Questions that you do not want to answer at this point can be skipped by leaving them blank. Skipped questions will reappear when executing the playbook again.

### Changing answers

If the answer to a question ever needs to be changed you need to do so manually. Adjust the file `./host_vars/localhost` to do that.

## Tasks that are not automated

### Jetbrains products

- Download toolbox: https://www.jetbrains.com/toolbox-app/download/download-thanks.html?platform=linux
- Unpack toolbox: `sudo tar -xzf ~/Downloads/jetbrains-toolbox-*.tar.gz -C /opt`
- Setup toolbox: `/opt/jetbrains-toolbox-*/jetbrains-toolbox`
- Install desired applications
- Configure desired applications

### Firefox openh264 codec plugin

The packages required to use the openh264 codec in Firefox are installed but the plugin is not enabled within Firefox.

To enable it open Firefox, go to **"Settings" -> "Extensions" & "Themes" -> "Plugins"** and set **"OpenH264 Video Codec provided by Cisco Systems, Inc."** to **"Always active"**.

### Eduroam

- Download the setup assistant: https://cat.eduroam.org/
- Execture the setup assistant: `python3 ~/Downloads/eduroam-linux-TUoMT.py`
  - Use {{ username }}@eduroam.mwn.de as userid

### Eduvpn

Allow the instructions for the current distribution from: https://python-eduvpn-client.readthedocs.io/en/master/
