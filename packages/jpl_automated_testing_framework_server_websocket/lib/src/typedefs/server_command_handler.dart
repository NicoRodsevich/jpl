import 'package:jpl_automated_testing_framework_models/jpl_automated_testing_framework_models.dart';
import 'package:jpl_automated_testing_framework_server_websocket/jpl_automated_testing_framework_server_websocket.dart';

typedef ServerCommandHandler = Future<void> Function({
  required Application? app,
  required DeviceCommand command,
  required WebSocketCommunicator? comm,
});
