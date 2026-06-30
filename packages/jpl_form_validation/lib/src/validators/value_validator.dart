import 'package:jpl_json_class/jpl_json_class.dart';

abstract class ValueValidator extends JsonClass {
  String get type;

  String? validate({
    required String label,
    required String? value,
  });
}
