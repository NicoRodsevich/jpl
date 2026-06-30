<!-- jpl-fork-notice -->
> ### 🛡️ Fork — Jeff Peiffer Legacy (`jpl_`)
> Este paquete (`jpl_automated_testing_framework_plugin_desktop`) es un **fork** de [`automated_testing_framework_plugin_desktop`](https://github.com/peiffer-innovations/automated_testing_framework_plugin_desktop), originalmente creado por Jeff Peiffer y **archivado** (read-only) junto con toda la org [`peiffer-innovations`](https://github.com/peiffer-innovations).
>
> El prefijo **`jpl_`** significa **Jeff Peiffer Legacy**: mantenemos vivo el legado de estos paquetes, bumpeados a las últimas versiones de Dart/Flutter, en el monorepo `jpl`.
>
> Licencia original conservada. El crédito del diseño y la implementación original es de Jeff Peiffer.

**ARCHIVED**: This is no longer maintained to focus on other packages.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [automated_testing_framework_plugin_desktop](#automated_testing_framework_plugin_desktop)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Quick Start](#quick-start)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# automated_testing_framework_plugin_desktop

## Table of Contents

* [Introduction](#introduction)
* [Quick Start](#quick-start)
* [Additional Test Steps](https://github.com/peiffer-innovations/automated_testing_framework_plugin_desktop/blob/main/documentation/STEPS.md)


## Introduction

A series of test steps that are related to test a desktop native application.


## Quick Start

```dart
import 'package:automated_testing_framework_plugin_desktop/automated_testing_framework_plugin_desktop.dart';

void main() {
  TestDesktopHelper.registerTestSteps();

  // rest of app initialization
  // ...
}
```

