<!-- jpl-fork-notice -->
> ### 🛡️ Fork — Jeff Peiffer Legacy (`jpl_`)
> Este paquete (`jpl_automated_testing_framework_plugin_strings`) es un **fork** de [`automated_testing_framework_plugin_strings`](https://github.com/peiffer-innovations/automated_testing_framework_plugin_strings), originalmente creado por Jeff Peiffer y **archivado** (read-only) junto con toda la org [`peiffer-innovations`](https://github.com/peiffer-innovations).
>
> El prefijo **`jpl_`** significa **Jeff Peiffer Legacy**: mantenemos vivo el legado de estos paquetes, bumpeados a las últimas versiones de Dart/Flutter, en el monorepo `jpl`.
>
> Licencia original conservada. El crédito del diseño y la implementación original es de Jeff Peiffer.

**ARCHIVED**: This is no longer maintained to focus on other packages.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [automated_testing_framework_plugin_strings](#automated_testing_framework_plugin_strings)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Live Example](#live-example)
  - [Supported Platforms](#supported-platforms)
  - [Reserved Variables](#reserved-variables)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# automated_testing_framework_plugin_strings

## Table of Contents

* [Introduction](#introduction)
* [Live Example](#live-example)
* [Reserved Variables](#reserved-variables)
* [Supported Platforms](#supported-platforms)
* [Additional Test Steps](https://github.com/peiffer-innovations/automated_testing_framework_plugin_strings/blob/main/documentation/STEPS.md)


## Introduction

This plugin provides test steps that allow for string generation and manipulation.


## Live Example

* [Web](https://peiffer-innovations.github.io/automated_testing_framework_plugin_flow_control/web/#/)


## Supported Platforms

This has been tested on Android and iOS, but should be compatible with all.


## Reserved Variables

The following table defines the reserved variables provided by the plugin that can be by appropriate tests:

Name         | Type      | Example      | Description
-------------|-----------|--------------|-------------
`_date`      | `String`  | `2020-01-01` | The value from the `set_date_variable` step if a variable name was not specifically set.
`_substring` | `String`  | `sub`        | The value from the `substring_variable` step if a variable name was not specifically set.

