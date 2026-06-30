import 'package:jpl_automated_testing_framework_models/automated_testing_framework_models.dart';
import 'package:jpl_automated_testing_framework_server_websocket/automated_testing_framework_server_websocket.dart';

class PingHandler {
  Future<void> handle({
    Application? app,
    DeviceCommand? command,
    WebSocketCommunicator? comm,
  }) async {
    if (command is PingCommand && comm is Device) {
      comm.testControllerState =
          command.testControllerState ?? comm.testControllerState;
    }
  }
}
