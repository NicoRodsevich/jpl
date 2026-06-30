<!-- jpl-fork-notice -->
> ### 🛡️ Fork — Jeff Peiffer Legacy (`jpl_`)
> Este paquete (`jpl_license_checker2`) es un **fork** de [`license_checker2`](https://github.com/peiffer-innovations/license_checker2), originalmente creado por Jeff Peiffer y **archivado** (read-only) junto con toda la org [`peiffer-innovations`](https://github.com/peiffer-innovations).
>
> El prefijo **`jpl_`** significa **Jeff Peiffer Legacy**: mantenemos vivo el legado de estos paquetes, bumpeados a las últimas versiones de Dart/Flutter, en el monorepo `jpl`.
>
> Licencia original conservada. El crédito del diseño y la implementación original es de Jeff Peiffer.

[I'm done](https://github.com/peiffer-innovations/peiffer-innovations.github.com)


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Fork](#fork)
- [Install](#install)
- [Getting Started](#getting-started)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

Displays the license of dependencies. Permitted, rejected and approved packages are configurable
through a YAML config file.

# Fork

**Note** this is a fork of [license_checker](https://pub.dev/packages/license_checker) as it appears that package was abandoned and no longer works with the new [Dart Workspaces](https://dart.dev/tools/pub/workspaces) feature.

# Install

`dart pub global activate license_checker2`

# Getting Started

Create a YAML config file. Example:

```yaml
permittedLicenses:
  - MIT
  - BSD-3-Clause

approvedPackages:
  Apache-2.0:
    - barbecue

# RegEx that can use custom detectors to detect the licensedar
customLicenses:
  MyCompany: |-
    (\(c\))?©?\sMy Company Name

rejectedLicenses:
  - GPL

copyrightNotice:
  mlb: "2000 MLB."

packageLicenseOverride:
  dodgers: BSD-3-Clause

packageSourceOverride:
  dodgers: https://dodgers.com
```

This file can be referenced when calling `lic_ck check-licenses` with the `--config` option.

`lic_ck` or `lic_ck -h` will display help
