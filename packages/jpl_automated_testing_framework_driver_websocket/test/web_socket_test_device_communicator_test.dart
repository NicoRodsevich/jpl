import 'package:jpl_automated_testing_framework_driver_websocket/device.dart';
import 'package:jpl_automated_testing_framework_models/jpl_automated_testing_framework_models.dart';
import 'package:test/test.dart';

void main() {
  test('error on create', () {
    try {
      WebSocketTestDeviceCommunicator(
        secret: '',
        testControllerState: TestControllerState(),
        url: '',
      );
    } catch (e) {
      // no-op
    }
  });
}
