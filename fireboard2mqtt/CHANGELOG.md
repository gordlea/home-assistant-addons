# Changelog

## [3.2.0](https://github.com/gordlea/fireboard2mqtt/compare/v3.1.5...v3.2.0) (2026-01-05)


### Features

* add ability to configure fireboard api update interval ([#72](https://github.com/gordlea/fireboard2mqtt/issues/72)) ([a02e764](https://github.com/gordlea/fireboard2mqtt/commit/a02e7649f762ce4dc8f155a56f648751dc18bc55))


### Bug Fixes

* remove obsolete channel_count property from device ([#69](https://github.com/gordlea/fireboard2mqtt/issues/69)) ([8d8c9fd](https://github.com/gordlea/fireboard2mqtt/commit/8d8c9fdfcd8b7890b76cb4b79f02f55e8af50b7a))
* update object_id references to default_entity_id ([#73](https://github.com/gordlea/fireboard2mqtt/issues/73)) ([381f45f](https://github.com/gordlea/fireboard2mqtt/commit/381f45f9f5066b11ac4eb9ae2f475b68708931c1))

## [3.1.5](https://github.com/gordlea/fireboard2mqtt/compare/v3.1.4...v3.1.5) (2025-08-19)


### Bug Fixes

* fix empty device_log error / missing date field ([#61](https://github.com/gordlea/fireboard2mqtt/issues/61)) ([55ff705](https://github.com/gordlea/fireboard2mqtt/commit/55ff7054f1528b90516926514d72c983af452def))

## [3.1.4](https://github.com/gordlea/fireboard2mqtt/compare/v3.1.3...v3.1.4) (2025-01-12)


### Bug Fixes

* header User-Agent now required by fireboard api ([#56](https://github.com/gordlea/fireboard2mqtt/issues/56)) ([7fd8705](https://github.com/gordlea/fireboard2mqtt/commit/7fd87055a843bb20db7ec5f5ca70e80c973e5d9a))


## [3.1.3](https://github.com/gordlea/fireboard2mqtt/compare/v3.1.2...v3.1.3) (2024-05-18)

* fix: no long send blank state when sensor is offline, this should stop all the extra logging showing up in the home assistant core log (thanks @mattdevo1)
* change default log level to WARN

## [3.1.2](https://github.com/gordlea/fireboard2mqtt/compare/v3.1.1...v3.1.2) (2024-04-06)

* add extra debug logging to fireboard_api ([#47](https://github.com/gordlea/fireboard2mqtt/issues/47)) ([f9c1683](https://github.com/gordlea/fireboard2mqtt/commit/f9c1683b610d8ccdd16e773b36ad2b77adc911a2))

## [3.1.1](https://github.com/gordlea/fireboard2mqtt/compare/v3.1.0...v3.1.1) (2024-04-04)

Update fireboard2mqtt to version v3.1.1

Add config option to allow anonymous mqtt server access. See [#55](https://github.com/gordlea/home-assistant-addons/issues/55).


## [3.1.0](https://github.com/gordlea/fireboard2mqtt/compare/v3.0.0...v3.1.0) (2024-03-26)

Update to fireboard2mqtt v3.1.0

Add ability to override mqtt url/username/password in home-assistant.

Special thanks to @efaden for the pull request.


## [3.0.0](https://github.com/gordlea/fireboard2mqtt/compare/v2.0.5...v3.0.0) (2024-03-24)


This is a complete rewrite in rust. It should fix many longstanding issues around the fireboard drive, as well as be much more memory and cpu efficient.

Special thanks to everyone who helped out testing this release: @mattdevo1, @alexownsall, @thanatars, @buffalowolff


Tested with:
* Fireboard2
* Fireboard Spark
* Fireboard Pro
* Yoder YS640S


### ⚠ BREAKING CHANGES

* new config format

### Features

* release version 3.x ([#31](https://github.com/gordlea/fireboard2mqtt/issues/31)) ([1844d61](https://github.com/gordlea/fireboard2mqtt/commit/1844d61b97fdbafab450fa4606b0700f5230aa5a))
