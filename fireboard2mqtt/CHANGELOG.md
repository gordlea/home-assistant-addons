# Changelog

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
