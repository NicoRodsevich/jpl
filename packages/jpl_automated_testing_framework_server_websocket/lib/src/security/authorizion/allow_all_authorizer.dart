import 'package:jpl_automated_testing_framework_models/jpl_automated_testing_framework_models.dart';
import 'package:jpl_automated_testing_framework_server_websocket/jpl_automated_testing_framework_server_websocket.dart';

/// [Authorizer] that will allow all commands to execute.
class AllowAllAutorizer extends Authorizer {
  /// Will always resolve with [true].
  @override
  Future<bool> authorize({
    required DeviceCommand command,
    required WebSocketCommunicator communicator,
  }) async =>
      true;
}
