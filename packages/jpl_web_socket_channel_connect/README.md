<!-- jpl-fork-notice -->
> ### 🛡️ Fork — Jeff Peiffer Legacy (`jpl_`)
> Este paquete (`jpl_web_socket_channel_connect`) es un **fork** de [`web_socket_channel_connect`](https://github.com/peiffer-innovations/web_socket_channel_connect), originalmente creado por Jeff Peiffer y **archivado** (read-only) junto con toda la org [`peiffer-innovations`](https://github.com/peiffer-innovations).
>
> El prefijo **`jpl_`** significa **Jeff Peiffer Legacy**: mantenemos vivo el legado de estos paquetes, bumpeados a las últimas versiones de Dart/Flutter, en el monorepo `jpl`.
>
> Licencia original conservada. El crédito del diseño y la implementación original es de Jeff Peiffer.

**DEPRECATED**: This package is deprecated and no longer necessary since [web_socket_channel](https://pub.dev/packages/web_socket_channel) version `2.3.0`.


## Old method

```dart
import 'package:web_socket_channel_connect/web_socket_channel_connect.dart';

Future<void> main() async {
  final channel = connectWebSocket(Uri.parse('ws:localhost:5333'));

  channel.stream.listen((message) {});
}
```

## New method

```dart
import 'package:web_socket_channel/web_socket_channel.dart';

main() async {
  final wsUrl = Uri.parse('ws:localhost:5333');
  final channel = WebSocketChannel.connect(wsUrl);

  await channel.ready;

  channel.stream.listen((message) {});
}```
