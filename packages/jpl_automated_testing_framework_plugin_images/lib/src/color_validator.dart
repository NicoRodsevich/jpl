import 'package:jpl_automated_testing_framework_plugin_images/jpl_automated_testing_framework_plugin_images.dart';
import 'package:jpl_form_validation/jpl_form_validation.dart';
import 'package:jpl_static_translations/jpl_static_translations.dart';

class ColorValidator extends ValueValidator {
  static const kType = 'color';

  @override
  String get type => kType;

  @override
  Map<String, dynamic> toJson() => {};

  @override
  String? validate({
    String? label,
    Translator? translator,
    String? value,
  }) {
    var valid = true;

    if (value?.isNotEmpty == true) {
      final colorRegex = r'^#[A-Fa-f0-9]{8}';

      final regex = RegExp(colorRegex);
      valid = regex.hasMatch(value!);
    }

    return valid == true
        ? null
        : translator!
            .translate(TestImagesTranslations.atf_images_error_not_color);
  }
}
