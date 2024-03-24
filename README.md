# Home Assistant add-on repository

This is a collection of addons that I have written and found useful.

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fgordlea%2Fhome-assistant-addons)

## Add-ons

This repository contains the following add-ons:

### [fireboard2mqtt](./fireboard2mqtt)

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]

_Connects your fireboard thermometer to home assistant via mqtt. Uses the fireboard cloud api._

#### Note: ####
Due to the 200 req/hr request limit on the fireboard api, this only updates temperatures every 20 seconds if the fireboard drive is disabled, or every 40 seconds if drive is enabled (in the config).

### [_emu2mqtt (deprecated)_](./emu2mqtt)

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]

_Connects your Rainforest Automation EMU-2 Energy monitoring unit to home assistant via mqtt. Connects via usb/tty._

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
