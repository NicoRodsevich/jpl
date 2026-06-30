import 'package:jpl_automated_testing_framework_models/jpl_automated_testing_framework_models.dart';
import 'package:jpl_automated_testing_framework_server_websocket/jpl_automated_testing_framework_server_websocket.dart';

class ListDevicesHandler {
  Future<void> handle({
    Application? app,
    DeviceCommand? command,
    WebSocketCommunicator? comm,
  }) async {
    if (command is ListDevicesCommand) {
      final devices = app!.devices.values
          .where((device) =>
              device.online == true &&
              (device.driverName == null || command.availableOnly != true))
          .toList();
      devices.sort((a, b) => a.device.compareTo(b.device));

      final reply = CommandAck(
        commandId: command.id,
        response: ListDevicesResponse(
          devices: devices
              .map(
                (device) => device.toConnectedDevice(),
              )
              .toList(),
        ),
      );

      await comm!.sendCommand(reply);
    }
  }
}
