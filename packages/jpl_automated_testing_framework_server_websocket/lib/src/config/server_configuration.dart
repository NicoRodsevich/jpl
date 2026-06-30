import 'package:jpl_json_class/jpl_json_class.dart';

class ServerConfiguration {
  factory ServerConfiguration() => _singleton;
  ServerConfiguration._internal();

  static const kDefaultReservationTimeout = Duration(seconds: 10);
  static const kDefaultMaxConnectionTime = Duration(minutes: 45);

  static final ServerConfiguration _singleton = ServerConfiguration._internal();

  static void fromDynamic(dynamic map) {
    if (map != null) {
      _singleton.maxConnectionTime = map['maxConnectionTime'] == null
          ? kDefaultMaxConnectionTime
          : JsonClass.parseDurationFromMillis(map['maxConnectionTime']);
      _singleton.reservationTimeout = map['reservationTimeout'] == null
          ? kDefaultReservationTimeout
          : JsonClass.parseDurationFromMillis(map['reservationTimeout']);
    }
  }

  Duration maxConnectionTime = kDefaultMaxConnectionTime;
  Duration reservationTimeout = kDefaultReservationTimeout;
}
