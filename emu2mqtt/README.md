# Home Assistant Add-on: emu2mqtt

### This addon is deprecated, support for the emu2 is now provided by the Rainforest RAVEn integration built into home assistant.

![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield] ![Supports i386 Architecture][i386-shield]

An addon that will bring your [Emu-2](https://www.rainforestautomation.com/rfa-z105-2-emu-2-2/) energy monitoring unit into home assistant via mqtt autodiscovery.

The unit must be connected to your home assistant host via usb.

This works with the [Home Energy Management](https://www.home-assistant.io/home-energy-management/) feature of home assistant.

It creates the following devices:

### Electricity Meter

A device that represents the meter at your house. It is configured as connected via the EMU-2 unit.
It has the following sensors:
* sensor.emu_2_meter_current_price
* sensor.emu_2_meter_price_tier
* sensor.emu_2_meter_energy_consumption
* sensor.emu_2_meter_energy_returned_to_grid
* sensor.emu_2_meter_power_demand

### EMU-2

A device that represents the EMU-2 unit itself. It has a single binary_sensor:
* binary_sensor.emu_2_connected_to_meter


## Requirements
You must be running home assistant with mqtt autodiscovery enabled.

See the addon's source code here [emu2mqtt](https://github.com/gordlea/emu2mqtt/). It can also be run standalone instead of as a home assistant addon.

## Install

In home assistant, go to the addon store, click the 3 dots and choose repositories. Down at the bottom where it says add, put: `https://github.com/gordlea/home-assistant-addons`.

The emu2mqtt addon should be available to install in the addon store now.

## Configure

Once it is installed, use the addon configuration tab to enter your mqtt server url. Mqtt username/password are optional.
Then if desired enter the make and model of the electricity meter outside your house (example: `meterManufactuerer: Itron, meterModel: OpenWay CENTRON`).

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
