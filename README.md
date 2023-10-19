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

TODO

## Tasks that are not automated

### Jetbrains products

- Download toolbox: https://www.jetbrains.com/toolbox-app/download/download-thanks.html?platform=linux
- Unpack toolbox: `sudo tar -xzf ~/Downloads/jetbrains-toolbox-*.tar.gz -C /opt`
- Setup toolbox: `/opt/jetbrains-toolbox-*/jetbrains-toolbox`
- Install desired applications
- Configure desired applications
- For IDEA remove JDKs installed in home directory: `rm -rf ~/.jdks`
- Setup system JDKs in IDEA via `/var/run/host/usr/lib/jvm/java-\*`

### Firefox openh264 codec plugin

The packages required to use the openh264 codec in Firefox are installed but the plugin is not enabled within Firefox.

To enable it open Firefox, go to **"Settings" -> "Extensions" & "Themes" -> "Plugins"** and set **"OpenH264 Video Codec provided by Cisco Systems, Inc."** to **"Always active"**.
