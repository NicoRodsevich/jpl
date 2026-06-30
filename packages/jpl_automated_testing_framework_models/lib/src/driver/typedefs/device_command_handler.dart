import 'package:jpl_automated_testing_framework_models/jpl_automated_testing_framework_models.dart';

typedef DeviceCommandHandler = Future<CommandAck> Function(
  DeviceCommand command,
);
