import 'package:meta/meta.dart';
import 'package:jpl_rest_client/jpl_rest_client.dart';

@immutable
class PassFailResponse extends Jsonable {
  PassFailResponse({
    this.error,
    @required this.success,
  }) : assert(success != null);

  final String error;
  final bool success;

  static PassFailResponse fromDynamic(dynamic map) {
    PassFailResponse result;

    if (map != null) {
      result = PassFailResponse(
        error: map['error'],
        success: Jsonable.parseBool(
          map['success'],
        ),
      );
    }

    return result;
  }

  @override
  Map<String, dynamic> toJson() => {};
}
